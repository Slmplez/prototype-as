/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.FontDialog
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.preference;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.FontDialog;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;

public class FontFieldEditor
extends FieldEditor {
    private Button changeFontButton = null;
    private String changeButtonText;
    private String previewText;
    private FontData[] chosenFont;
    private Label valueControl;
    private DefaultPreviewer previewer;

    protected FontFieldEditor() {
    }

    public FontFieldEditor(String name, String labelText, String previewAreaText, Composite parent) {
        this.init(name, labelText);
        this.previewText = previewAreaText;
        this.changeButtonText = JFaceResources.getString("openChange");
        this.createControl(parent);
    }

    public FontFieldEditor(String name, String labelText, Composite parent) {
        this(name, labelText, null, parent);
    }

    protected void adjustForNumColumns(int numColumns) {
        GridData data = new GridData();
        if (this.valueControl.getLayoutData() != null) {
            data = (GridData)this.valueControl.getLayoutData();
        }
        data.horizontalSpan = numColumns - this.getNumberOfControls() + 1;
        this.valueControl.setLayoutData((Object)data);
    }

    protected void applyFont() {
        if (this.chosenFont != null && this.previewer != null) {
            this.previewer.setFont(this.chosenFont);
        }
    }

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        this.getLabelControl(parent);
        this.valueControl = this.getValueControl(parent);
        GridData gd = new GridData(768);
        gd.horizontalSpan = numColumns - this.getNumberOfControls() + 1;
        this.valueControl.setLayoutData((Object)gd);
        if (this.previewText != null) {
            this.previewer = new DefaultPreviewer(this.previewText, parent);
            gd = new GridData(768);
            gd.heightHint = this.previewer.getPreferredExtent();
            gd.widthHint = this.previewer.getPreferredExtent();
            this.previewer.getControl().setLayoutData((Object)gd);
        }
        this.changeFontButton = this.getChangeControl(parent);
        gd = new GridData();
        int widthHint = this.convertHorizontalDLUsToPixels((Control)this.changeFontButton, 61);
        gd.widthHint = Math.max(widthHint, this.changeFontButton.computeSize((int)-1, (int)-1, (boolean)true).x);
        this.changeFontButton.setLayoutData((Object)gd);
    }

    protected void doLoad() {
        if (this.changeFontButton == null) {
            return;
        }
        this.updateFont(PreferenceConverter.getFontDataArray(this.getPreferenceStore(), this.getPreferenceName()));
    }

    protected void doLoadDefault() {
        if (this.changeFontButton == null) {
            return;
        }
        this.updateFont(PreferenceConverter.getDefaultFontDataArray(this.getPreferenceStore(), this.getPreferenceName()));
    }

    protected void doStore() {
        if (this.chosenFont != null) {
            PreferenceConverter.setValue(this.getPreferenceStore(), this.getPreferenceName(), this.chosenFont);
        }
    }

    protected Button getChangeControl(Composite parent) {
        if (this.changeFontButton == null) {
            this.changeFontButton = new Button(parent, 8);
            if (this.changeButtonText != null) {
                this.changeFontButton.setText(this.changeButtonText);
            }
            this.changeFontButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent event) {
                    FontData font;
                    FontDialog fontDialog = new FontDialog(FontFieldEditor.this.changeFontButton.getShell());
                    if (FontFieldEditor.this.chosenFont != null) {
                        fontDialog.setFontList(FontFieldEditor.this.chosenFont);
                    }
                    if ((font = fontDialog.open()) != null) {
                        FontData[] oldFont = FontFieldEditor.this.chosenFont;
                        if (oldFont == null) {
                            oldFont = JFaceResources.getDefaultFont().getFontData();
                        }
                        FontFieldEditor.this.setPresentsDefaultValue(false);
                        FontData[] newData = new FontData[]{font};
                        FontFieldEditor.this.updateFont(newData);
                        FontFieldEditor.this.fireValueChanged("field_editor_value", oldFont[0], font);
                    }
                }
            });
            this.changeFontButton.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    FontFieldEditor.this.changeFontButton = null;
                }
            });
            this.changeFontButton.setFont(parent.getFont());
            this.setButtonLayoutData(this.changeFontButton);
        } else {
            this.checkParent((Control)this.changeFontButton, parent);
        }
        return this.changeFontButton;
    }

    public int getNumberOfControls() {
        if (this.previewer == null) {
            return 3;
        }
        return 4;
    }

    public int getPreferredPreviewHeight() {
        if (this.previewer == null) {
            return -1;
        }
        return this.previewer.getPreferredExtent();
    }

    public Control getPreviewControl() {
        if (this.previewer == null) {
            return null;
        }
        return this.previewer.getControl();
    }

    protected Label getValueControl(Composite parent) {
        if (this.valueControl == null) {
            this.valueControl = new Label(parent, 16384);
            this.valueControl.setFont(parent.getFont());
            this.valueControl.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent event) {
                    FontFieldEditor.this.valueControl = null;
                }
            });
        } else {
            this.checkParent((Control)this.valueControl, parent);
        }
        return this.valueControl;
    }

    public void setChangeButtonText(String text) {
        Assert.isNotNull((Object)text);
        this.changeButtonText = text;
        if (this.changeFontButton != null) {
            this.changeFontButton.setText(text);
        }
    }

    private void updateFont(FontData[] font) {
        FontData[] bestFont = JFaceResources.getFontRegistry().filterData(font, this.valueControl.getDisplay());
        if (bestFont == null) {
            bestFont = this.getDefaultFontData();
        }
        this.chosenFont = bestFont;
        if (this.valueControl != null) {
            this.valueControl.setText(StringConverter.asString(this.chosenFont[0]));
        }
        if (this.previewer != null) {
            this.previewer.setFont(bestFont);
        }
    }

    protected void setToDefault() {
        FontData[] defaultFontData = PreferenceConverter.getDefaultFontDataArray(this.getPreferenceStore(), this.getPreferenceName());
        PreferenceConverter.setValue(this.getPreferenceStore(), this.getPreferenceName(), defaultFontData);
    }

    private FontData[] getDefaultFontData() {
        return this.valueControl.getDisplay().getSystemFont().getFontData();
    }

    public void setEnabled(boolean enabled, Composite parent) {
        super.setEnabled(enabled, parent);
        this.getChangeControl(parent).setEnabled(enabled);
        this.getValueControl(parent).setEnabled(enabled);
    }

    private static class DefaultPreviewer {
        private Text text;
        private String string;
        private Font font;

        public DefaultPreviewer(String s, Composite parent) {
            this.string = s;
            this.text = new Text(parent, 2056);
            this.text.addDisposeListener(new DisposeListener(this){
                final /* synthetic */ DefaultPreviewer this$1;
                {
                    this.this$1 = defaultPreviewer;
                }

                public void widgetDisposed(DisposeEvent e) {
                    if (DefaultPreviewer.access$0(this.this$1) != null) {
                        DefaultPreviewer.access$0(this.this$1).dispose();
                    }
                }
            });
            if (this.string != null) {
                this.text.setText(this.string);
            }
        }

        public Control getControl() {
            return this.text;
        }

        public void setFont(FontData[] fontData) {
            if (this.font != null) {
                this.font.dispose();
            }
            this.font = new Font((Device)this.text.getDisplay(), fontData);
            this.text.setFont(this.font);
        }

        public int getPreferredExtent() {
            return 40;
        }

        static /* synthetic */ Font access$0(DefaultPreviewer defaultPreviewer) {
            return defaultPreviewer.font;
        }
    }
}

