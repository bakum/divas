package ua.divas.bean;

import java.io.OutputStream;

import java.util.Iterator;
import java.util.List;

import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.el.MethodExpression;

import javax.faces.application.Application;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import javax.faces.event.ActionEvent;

import oracle.adf.model.BindingContext;
import oracle.adf.model.binding.DCBindingContainer;
import oracle.adf.model.binding.DCIteratorBinding;
import oracle.adf.view.rich.component.rich.data.RichTreeTable;

import oracle.adf.view.rich.context.AdfFacesContext;
import oracle.adf.view.rich.event.DialogEvent;
import oracle.adf.view.rich.event.PopupCanceledEvent;
import oracle.adf.view.rich.event.PopupFetchEvent;

import oracle.binding.BindingContainer;

import oracle.binding.OperationBinding;

import oracle.jbo.Row;
import oracle.jbo.RowNotFoundException;
import oracle.jbo.uicli.binding.JUCtrlHierBinding;
import oracle.jbo.uicli.binding.JUCtrlHierNodeBinding;
import oracle.jbo.uicli.binding.JUIteratorBinding;

import org.apache.myfaces.trinidad.event.SelectionEvent;
import org.apache.myfaces.trinidad.model.CollectionModel;
import org.apache.myfaces.trinidad.model.RowKeySet;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

public class KontragDirBean {
    private RichTreeTable treeTable;
    private String del_title;
    private String del_label;
    private String del_style;

    public KontragDirBean() {
    }

    public void setTreeTable(RichTreeTable treeTable) {
        this.treeTable = treeTable;
    }

    public RichTreeTable getTreeTable() {
        return treeTable;
    }

    public BindingContainer getBindings() {
        return BindingContext.getCurrent().getCurrentBindingsEntry();
    }

    public String refresh() {

        DCBindingContainer binding = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = binding.findIteratorBinding("KontragentsAllRoot1Iterator");
        if (it != null) {
            it.executeQuery();
        }
        AdfFacesContext.getCurrentInstance().addPartialTarget(getTreeTable());
        return null;
    }

    public void onTreeSelect(SelectionEvent selectionEvent) {
        String adfSelectionListener = "#{bindings.KontragentsAllRoot1.treeModel.makeCurrent}";

        FacesContext fctx = FacesContext.getCurrentInstance();
        Application application = fctx.getApplication();
        ELContext elCtx = fctx.getELContext();
        ExpressionFactory exprFactory = application.getExpressionFactory();

        MethodExpression me = null;
        me = exprFactory.createMethodExpression(elCtx, adfSelectionListener, Object.class, new Class[] {
                                                SelectionEvent.class });
        me.invoke(elCtx, new Object[] { selectionEvent });

        RichTreeTable tree1 = this.getTreeTable();
        RowKeySet rks2 = tree1.getSelectedRowKeys();
        Iterator rksIterator = rks2.iterator();
        if (rksIterator.hasNext()) {
            List key = (List) rksIterator.next();
            JUCtrlHierBinding treeBinding = null;
            treeBinding = (JUCtrlHierBinding) ((CollectionModel) tree1.getValue()).getWrappedData();
            JUCtrlHierNodeBinding nodeBinding = treeBinding.findNodeByKeyPath(key);

            Row rw = nodeBinding.getRow();
            //print first row attribute. Note that in a tree you have to
            //determine the node type if you want to select node attributes
            //by name and not index
            String rowType = rw.getStructureDef().getDefName();
            System.out.println(rowType);

            DCIteratorBinding _treeIteratorBinding = null;
            _treeIteratorBinding = treeBinding.getDCIteratorBinding();
            JUIteratorBinding iterator = nodeBinding.getIteratorBinding();
            String keyStr = nodeBinding.getRowKey().toStringFormat(true);
            if (keyStr != null && rowType.matches("KontragentsAll")) {
                DCIteratorBinding iter = (DCIteratorBinding) getBindings().get("KontragentsAll1Iterator");
                try {
                    iter.setCurrentRowWithKey(keyStr);
                } catch (RowNotFoundException e) {
                    try {
                        iterator.setCurrentRowWithKey(keyStr);
                    } catch (RowNotFoundException er) {
                        System.out.println(er.getMessage());

                    }
                }
            }
        }
    }

    public void onPopupFetch(PopupFetchEvent popupFetchEvent) {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsAll1Iterator");
        Row currRow = it.getCurrentRow();
        Integer isGroup = (Integer) currRow.getAttribute("IsGroup");
        String Id = (String) currRow.getAttribute("Id");
        String ParentId = (String) currRow.getAttribute("ParentId");

        if (popupFetchEvent.getLaunchSourceClientId().contains("bCreateGroup")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("CreateInsert");
            ob.execute();
            currRow = it.getCurrentRow();
            if (isGroup == 1) {
                currRow.setAttribute("ParentId", Id);
            } else {
                currRow.setAttribute("ParentId", ParentId);
            }
            currRow.setAttribute("IsGroup", 1);
        } else if (popupFetchEvent.getLaunchSourceClientId().contains("bCreate")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("CreateInsert");
            ob.execute();
            currRow = it.getCurrentRow();
            if (isGroup == 1) {
                currRow.setAttribute("ParentId", Id);
            } else {
                currRow.setAttribute("ParentId", ParentId);
            }
        }
    }

    public void onDialogPopup(DialogEvent dialogEvent) {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        if (dialogEvent.getOutcome().name().equals("ok")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Commit");
            if (bd.getDataControl().isTransactionModified()) {
                ob.execute();
                refresh();
            }
        } else if (dialogEvent.getOutcome().name().equals("cancel")) {
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Rollback");

            ob.execute();

        }
    }

    public void cancelListener(PopupCanceledEvent popupCanceledEvent) {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();

        BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
        OperationBinding ob = binding.getOperationBinding("Rollback");

        /*  String rks;
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsAll1Iterator");
        if (it != null) {
            try {
                rks = it.getCurrentRow().getKey().toStringFormat(true);
            } catch (Exception e) {
                rks = null;
                e.printStackTrace();
            }
            it.executeQuery();
            if (rks != null) {
                it.setCurrentRowWithKey(rks);
            }
        }*/
        if (bd.getDataControl().isTransactionModified()) {
            ob.execute();
            refresh();
        }
    }

    public void setDel_title(String del_title) {
        this.del_title = del_title;
    }

    public String getDel_title() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsAll1Iterator");
        Row currRow = it.getCurrentRow();
        Integer Del = (Integer) currRow.getAttribute("Deleted");
        String RetStr = null;
        if (Del == 0) {
            RetStr = "Вы хотите пометить объект на удаление?";
        } else {
            RetStr = "Вы хотите снять пометку на удаление?";
        }
        return RetStr;
    }

    public void setDel_label(String del_label) {
        this.del_label = del_label;
    }

    public String getDel_label() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsAll1Iterator");
        Row currRow = it.getCurrentRow();
        Integer Del = (Integer) currRow.getAttribute("Deleted");
        String RetStr = null;
        if (Del == 0) {
            RetStr = "Пометить на удаление";
        } else {
            RetStr = "Снять пометку на удаление";
        }
        return RetStr;
    }

    public void setDel_style(String del_style) {
        this.del_style = del_style;
    }

    public String getDel_style() {
        DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
        DCIteratorBinding it = bd.findIteratorBinding("KontragentsAll1Iterator");
        Row currRow = it.getCurrentRow();
        Integer Del = (Integer) currRow.getAttribute("Deleted");
        String RetStr = null;
        if (Del == 0) {
            RetStr = "font-size:large; Color : Red;";
        } else {
            RetStr = "font-size:large;";
        }
        return RetStr;
    }

    public void onDeleteDialog(DialogEvent dialogEvent) {
        if (dialogEvent.getOutcome().name().equals("ok")) {
            DCBindingContainer bd = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding it = bd.findIteratorBinding("KontragentsAll1Iterator");
            Row currRow = it.getCurrentRow();
            Integer Del = (Integer) currRow.getAttribute("Deleted");
            if (Del == 0) {
                BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
                OperationBinding ob = binding.getOperationBinding("Delete");
                ob.execute();
            } else {
                currRow.setAttribute("Deleted", 0);
            }
            BindingContainer binding = BindingContext.getCurrent().getCurrentBindingsEntry();
            OperationBinding ob = binding.getOperationBinding("Commit");

            ob.execute();
            refresh();

        }
    }

    public void onRefresh(ActionEvent actionEvent) {
        refresh();
    }

    public void generateExcel(FacesContext facesContext, OutputStream outputStream) {
        try {
            HSSFWorkbook workbook = new HSSFWorkbook();
            HSSFSheet worksheet = workbook.createSheet("Контакты");
            DCBindingContainer bindings = (DCBindingContainer) BindingContext.getCurrent().getCurrentBindingsEntry();
            DCIteratorBinding dcIteratorBindings = bindings.findIteratorBinding("KontragentsRep1Iterator");
            HSSFRow excelrow = null;

            // Get all the rows of a iterator
            oracle.jbo.Row[] rows = dcIteratorBindings.getAllRowsInRange();
            int i = 0;
            for (oracle.jbo.Row row : rows) {
                //print header on first row in excel
                if (i == 0) {
                    excelrow = (HSSFRow) worksheet.createRow((short) i);
                    short j = 0;
                    for (String colName : row.getAttributeNames()) {
                        HSSFCell cellA1 = excelrow.createCell((short) j);
                        if (colName.equalsIgnoreCase("Fullname")) {
                            cellA1.setCellValue("Ф.И.О.");
                        }
                        if (colName.equalsIgnoreCase("Adress")) {
                            cellA1.setCellValue("Адрес");
                        }
                        if (colName.equalsIgnoreCase("Phone")) {
                            cellA1.setCellValue("Телефон");
                        }
                        if (colName.equalsIgnoreCase("Email")) {
                            cellA1.setCellValue("Почта");
                        }
                        j++;
                    }
                }
                //print data from second row in excel
                ++i;
                short j = 0;
                excelrow = worksheet.createRow((short) i);
                for (String colName : row.getAttributeNames()) {
                    //System.out.println("hello " + row.getAttribute(colName));
                    //System.out.println("hello " + colName);
                    HSSFCell cell = excelrow.createCell(j);
                    /* if (null != row.getAttribute(colName)) {
                        cell.setCellValue(row.getAttribute(colName).toString());
                    }  */
                    if (colName.equalsIgnoreCase("Fullname")) {
                        cell.setCellValue(row.getAttribute(colName).toString());
                    }
                    if (colName.equalsIgnoreCase("Adress")) {
                        if (null != row.getAttribute(colName)) {
                            cell.setCellValue(row.getAttribute(colName).toString());
                        }
                    }
                    if (colName.equalsIgnoreCase("Phone")) {
                        if (null != row.getAttribute(colName)) {
                            cell.setCellValue(row.getAttribute(colName).toString());
                        }
                    }                    
                    if (colName.equalsIgnoreCase("Email")) {
                        if (null != row.getAttribute(colName)) {
                            cell.setCellValue(row.getAttribute(colName).toString());
                        }
                    }
                    //cell.setCellValue("Rакая-то херня");
                    j++;

                }
                worksheet.createFreezePane(0, 1, 0, 1);
                worksheet.autoSizeColumn(0);
                worksheet.autoSizeColumn(1);
                worksheet.autoSizeColumn(2);
                worksheet.autoSizeColumn(3);
            }

            workbook.write(outputStream);
            outputStream.flush();
        } catch (Exception e) {
            // TODO: Add catch code
            e.printStackTrace();
        }


    }

    public void onPdf(ActionEvent actionEvent) {
        FacesContext ctx = FacesContext.getCurrentInstance();
        FacesMessage msg = new FacesMessage(FacesMessage.SEVERITY_INFO, "Infirmation", "Функция ещё не реализована!");
        ctx.addMessage(null, msg);
    }
}
