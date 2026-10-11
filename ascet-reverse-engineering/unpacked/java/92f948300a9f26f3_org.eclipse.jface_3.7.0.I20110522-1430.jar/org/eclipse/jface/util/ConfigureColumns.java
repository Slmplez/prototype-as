/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeColumn
 */
package org.eclipse.jface.util;

import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeColumn;

public class ConfigureColumns {
    public static boolean forTree(Tree tree, IShellProvider shellProvider) {
        return new ConfigureColumnsDialog(shellProvider, tree).open() == 0;
    }

    public static boolean forTable(Table table, IShellProvider shellProvider) {
        return new ConfigureColumnsDialog(shellProvider, table).open() == 0;
    }

    static class ConfigureColumnsDialog
    extends Dialog {
        private Control targetControl;
        private ColumnObject[] columnObjects;
        private Table table;
        private Button upButton;
        private Button downButton;
        private Text text;
        private boolean moveableColumnsFound;

        public ConfigureColumnsDialog(IShellProvider shellProvider, Table table) {
            this(shellProvider, (Control)table);
        }

        public ConfigureColumnsDialog(IShellProvider shellProvider, Tree tree) {
            this(shellProvider, (Control)tree);
        }

        private ConfigureColumnsDialog(IShellProvider shellProvider, Control control) {
            super(shellProvider);
            this.targetControl = control;
            this.moveableColumnsFound = this.createColumnObjects();
        }

        protected boolean isResizable() {
            return true;
        }

        public void create() {
            super.create();
            this.getShell().setText(JFaceResources.getString("ConfigureColumnsDialog_Title"));
        }

        protected void initializeBounds() {
            super.initializeBounds();
            this.table.setSelection(0);
            this.handleSelectionChanged(0);
        }

        private boolean createColumnObjects() {
            boolean result = true;
            Item[] columns = this.getViewerColumns();
            ColumnObject[] cObjects = new ColumnObject[columns.length];
            int i = 0;
            while (i < columns.length) {
                Item c = columns[i];
                boolean moveable = this.getMoveable(c);
                result = result && moveable;
                cObjects[i] = new ColumnObject(c, i, this.getColumnName(c), this.getColumnImage(c), this.getColumnWidth(c), moveable, this.getResizable(c), true);
                ++i;
            }
            int[] columnOrder = this.getColumnOrder();
            this.columnObjects = new ColumnObject[columns.length];
            int i2 = 0;
            while (i2 < columnOrder.length) {
                this.columnObjects[i2] = cObjects[columnOrder[i2]];
                ++i2;
            }
            return result;
        }

        private Image getColumnImage(Item item) {
            if (item instanceof TableColumn) {
                return ((TableColumn)item).getImage();
            }
            if (item instanceof TreeColumn) {
                return ((TreeColumn)item).getImage();
            }
            return null;
        }

        private int[] getColumnOrder() {
            if (this.targetControl instanceof Table) {
                return ((Table)this.targetControl).getColumnOrder();
            }
            if (this.targetControl instanceof Tree) {
                return ((Tree)this.targetControl).getColumnOrder();
            }
            return new int[0];
        }

        private boolean getMoveable(Item item) {
            if (item instanceof TableColumn) {
                return ((TableColumn)item).getMoveable();
            }
            if (item instanceof TreeColumn) {
                return ((TreeColumn)item).getMoveable();
            }
            return false;
        }

        private boolean getResizable(Item item) {
            if (item instanceof TableColumn) {
                return ((TableColumn)item).getResizable();
            }
            if (item instanceof TreeColumn) {
                return ((TreeColumn)item).getResizable();
            }
            return false;
        }

        protected Control createDialogArea(Composite parent) {
            Composite composite = (Composite)super.createDialogArea(parent);
            this.table = new Table(composite, 2820);
            int i = 0;
            while (i < this.columnObjects.length) {
                TableItem tableItem = new TableItem(this.table, 0);
                tableItem.setText(this.columnObjects[i].name);
                tableItem.setImage(this.columnObjects[i].image);
                tableItem.setData((Object)this.columnObjects[i]);
                ++i;
            }
            GridDataFactory.defaultsFor((Control)this.table).span(1, this.moveableColumnsFound ? 3 : 1).applyTo((Control)this.table);
            if (this.moveableColumnsFound) {
                this.upButton = new Button(composite, 8);
                this.upButton.setText(JFaceResources.getString("ConfigureColumnsDialog_up"));
                this.upButton.addListener(13, new Listener(this){
                    final /* synthetic */ ConfigureColumnsDialog this$1;
                    {
                        this.this$1 = configureColumnsDialog;
                    }

                    public void handleEvent(Event event) {
                        this.this$1.handleMove(ConfigureColumnsDialog.access$0(this.this$1), true);
                    }
                });
                this.setButtonLayoutData(this.upButton);
                this.downButton = new Button(composite, 8);
                this.downButton.setText(JFaceResources.getString("ConfigureColumnsDialog_down"));
                this.downButton.addListener(13, new Listener(this){
                    final /* synthetic */ ConfigureColumnsDialog this$1;
                    {
                        this.this$1 = configureColumnsDialog;
                    }

                    public void handleEvent(Event event) {
                        this.this$1.handleMove(ConfigureColumnsDialog.access$0(this.this$1), false);
                    }
                });
                this.setButtonLayoutData(this.downButton);
                this.createLabel(composite, "");
            }
            Composite widthComposite = new Composite(composite, 0);
            this.createLabel(widthComposite, JFaceResources.getString("ConfigureColumnsDialog_WidthOfSelectedColumn"));
            this.text = new Text(widthComposite, 2052);
            this.text.setText(Integer.toString(1000));
            GridLayoutFactory.fillDefaults().numColumns(2).applyTo(widthComposite);
            int numColumns = this.moveableColumnsFound ? 2 : 1;
            GridDataFactory.defaultsFor((Control)widthComposite).grab(false, false).span(numColumns, 1).applyTo((Control)widthComposite);
            GridLayoutFactory.swtDefaults().numColumns(numColumns).applyTo(composite);
            this.table.addListener(13, new Listener(this){
                final /* synthetic */ ConfigureColumnsDialog this$1;
                {
                    this.this$1 = configureColumnsDialog;
                }

                public void handleEvent(Event event) {
                    ConfigureColumnsDialog.access$1(this.this$1, ConfigureColumnsDialog.access$0(this.this$1).indexOf((TableItem)event.item));
                }
            });
            this.text.addListener(24, new Listener(this){
                final /* synthetic */ ConfigureColumnsDialog this$1;
                {
                    this.this$1 = configureColumnsDialog;
                }

                public void handleEvent(Event event) {
                    ColumnObject columnObject = ConfigureColumnsDialog.access$2(this.this$1)[ConfigureColumnsDialog.access$0(this.this$1).getSelectionIndex()];
                    if (!columnObject.resizable) {
                        return;
                    }
                    try {
                        int width;
                        columnObject.width = width = Integer.parseInt(ConfigureColumnsDialog.access$3(this.this$1).getText());
                    }
                    catch (NumberFormatException numberFormatException) {}
                }
            });
            Dialog.applyDialogFont((Control)composite);
            return composite;
        }

        protected void handleMove(Table table, boolean up) {
            int index = table.getSelectionIndex();
            int newIndex = index + (up ? -1 : 1);
            if (index < 0 || index >= table.getItemCount()) {
                return;
            }
            ColumnObject columnObject = this.columnObjects[index];
            this.columnObjects[index] = this.columnObjects[newIndex];
            this.columnObjects[newIndex] = columnObject;
            table.getItem(index).dispose();
            TableItem newItem = new TableItem(table, 0, newIndex);
            newItem.setText(columnObject.name);
            newItem.setImage(columnObject.image);
            newItem.setData((Object)columnObject);
            table.setSelection(newIndex);
            this.handleSelectionChanged(newIndex);
        }

        private void createLabel(Composite composite, String string) {
            Label label = new Label(composite, 0);
            label.setText(string);
        }

        private String getColumnName(Item item) {
            String result = "";
            if (item instanceof TableColumn) {
                result = ((TableColumn)item).getText();
                if (result.trim().equals("")) {
                    result = ((TableColumn)item).getToolTipText();
                }
            } else if (item instanceof TreeColumn && (result = ((TreeColumn)item).getText()).trim().equals("")) {
                result = ((TreeColumn)item).getToolTipText();
            }
            return result;
        }

        private int getColumnWidth(Item item) {
            if (item instanceof TableColumn) {
                return ((TableColumn)item).getWidth();
            }
            if (item instanceof TreeColumn) {
                return ((TreeColumn)item).getWidth();
            }
            return 0;
        }

        private Item[] getViewerColumns() {
            if (this.targetControl instanceof Table) {
                return ((Table)this.targetControl).getColumns();
            }
            if (this.targetControl instanceof Tree) {
                return ((Tree)this.targetControl).getColumns();
            }
            return new Item[0];
        }

        private void handleSelectionChanged(int index) {
            ColumnObject c = this.columnObjects[index];
            this.text.setText(Integer.toString(c.width));
            this.text.setEnabled(c.resizable);
            if (this.moveableColumnsFound) {
                this.upButton.setEnabled(c.moveable && index > 0);
                this.downButton.setEnabled(c.moveable && index + 1 < this.table.getItemCount());
            }
        }

        protected void okPressed() {
            int[] columnOrder = new int[this.columnObjects.length];
            int i = 0;
            while (i < this.columnObjects.length) {
                ColumnObject columnObject = this.columnObjects[i];
                columnOrder[i] = columnObject.index;
                this.setColumnWidth(columnObject.column, columnObject.width);
                ++i;
            }
            this.setColumnOrder(columnOrder);
            super.okPressed();
        }

        private void setColumnWidth(Item item, int width) {
            if (item instanceof TableColumn) {
                ((TableColumn)item).setWidth(width);
            } else if (item instanceof TreeColumn) {
                ((TreeColumn)item).setWidth(width);
            }
        }

        private void setColumnOrder(int[] order) {
            if (this.targetControl instanceof Table) {
                ((Table)this.targetControl).setColumnOrder(order);
            } else if (this.targetControl instanceof Tree) {
                ((Tree)this.targetControl).setColumnOrder(order);
            }
        }

        static /* synthetic */ Table access$0(ConfigureColumnsDialog configureColumnsDialog) {
            return configureColumnsDialog.table;
        }

        static /* synthetic */ void access$1(ConfigureColumnsDialog configureColumnsDialog, int n) {
            configureColumnsDialog.handleSelectionChanged(n);
        }

        static /* synthetic */ ColumnObject[] access$2(ConfigureColumnsDialog configureColumnsDialog) {
            return configureColumnsDialog.columnObjects;
        }

        static /* synthetic */ Text access$3(ConfigureColumnsDialog configureColumnsDialog) {
            return configureColumnsDialog.text;
        }

        class ColumnObject {
            Item column;
            int index;
            String name;
            Image image;
            boolean visible;
            int width;
            boolean moveable;
            boolean resizable;

            ColumnObject(Item column, int index, String text, Image image, int width, boolean moveable, boolean resizable, boolean visible) {
                this.column = column;
                this.index = index;
                this.name = text;
                this.image = image;
                this.width = width;
                this.moveable = moveable;
                this.resizable = resizable;
                this.visible = visible;
            }
        }
    }
}

