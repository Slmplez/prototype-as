/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.FormData
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import java.util.Arrays;
import java.util.HashMap;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.IDialogBlockedHandler;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.jface.window.SameShellProvider;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;

public abstract class Dialog
extends Window {
    public static final String DLG_IMG_ERROR = "dialog_error_image";
    public static final String DLG_IMG_INFO = "dialog_info_imageg";
    public static final String DLG_IMG_QUESTION = "dialog_question_image";
    public static final String DLG_IMG_WARNING = "dialog_warning_image";
    public static final String DLG_IMG_MESSAGE_INFO = "dialog_messasge_info_image";
    public static final String DLG_IMG_MESSAGE_WARNING = "dialog_messasge_warning_image";
    public static final String DLG_IMG_MESSAGE_ERROR = "dialog_message_error_image";
    public static final String DLG_IMG_HELP = "dialog_help_image";
    public static final String ELLIPSIS = "...";
    private static final String DIALOG_ORIGIN_X = "DIALOG_X_ORIGIN";
    private static final String DIALOG_ORIGIN_Y = "DIALOG_Y_ORIGIN";
    private static final String DIALOG_WIDTH = "DIALOG_WIDTH";
    private static final String DIALOG_HEIGHT = "DIALOG_HEIGHT";
    private static final String DIALOG_FONT_DATA = "DIALOG_FONT_NAME";
    public static final int DIALOG_DEFAULT_BOUNDS = -1;
    public static final int DIALOG_PERSISTLOCATION = 1;
    public static final int DIALOG_PERSISTSIZE = 2;
    protected Control dialogArea;
    public Control buttonBar;
    private HashMap buttons = new HashMap();
    private FontMetrics fontMetrics;
    private static final int HORIZONTAL_DIALOG_UNIT_PER_CHAR = 4;
    private static final int VERTICAL_DIALOG_UNITS_PER_CHAR = 8;
    public static IDialogBlockedHandler blockedHandler = new IDialogBlockedHandler(){

        public void clearBlocked() {
        }

        public void showBlocked(IProgressMonitor blocking, IStatus blockingStatus, String blockedName) {
        }

        public void showBlocked(Shell parentShell, IProgressMonitor blocking, IStatus blockingStatus, String blockedName) {
        }
    };

    public static int convertHeightInCharsToPixels(FontMetrics fontMetrics, int chars) {
        return fontMetrics.getHeight() * chars;
    }

    public static int convertHorizontalDLUsToPixels(FontMetrics fontMetrics, int dlus) {
        return (fontMetrics.getAverageCharWidth() * dlus + 2) / 4;
    }

    public static int convertVerticalDLUsToPixels(FontMetrics fontMetrics, int dlus) {
        return (fontMetrics.getHeight() * dlus + 4) / 8;
    }

    public static int convertWidthInCharsToPixels(FontMetrics fontMetrics, int chars) {
        return fontMetrics.getAverageCharWidth() * chars;
    }

    public static String shortenText(String textValue, Control control) {
        if (textValue == null) {
            return null;
        }
        GC gc = new GC((Drawable)control);
        int maxExtent = gc.textExtent((String)textValue).x;
        int maxWidth = control.getBounds().width - 5;
        if (maxExtent < maxWidth) {
            gc.dispose();
            return textValue;
        }
        int length = textValue.length();
        int charsToClip = Math.round(0.95f * (float)length * (1.0f - (float)maxWidth / (float)maxExtent));
        int pivot = length / 2;
        int start = pivot - charsToClip / 2;
        int end = pivot + charsToClip / 2 + 1;
        while (start >= 0 && end < length) {
            String s1 = textValue.substring(0, start);
            String s2 = textValue.substring(end, length);
            String s = String.valueOf(s1) + ELLIPSIS + s2;
            int l = gc.textExtent((String)s).x;
            if (l < maxWidth) {
                gc.dispose();
                return s;
            }
            --start;
            ++end;
        }
        gc.dispose();
        return textValue;
    }

    protected Dialog(Shell parentShell) {
        this(new SameShellProvider((Control)parentShell));
        if (parentShell == null && Policy.DEBUG_DIALOG_NO_PARENT) {
            Policy.getLog().log((IStatus)new Status(1, "org.eclipse.jface", 1, this.getClass() + " created with no shell", (Throwable)new Exception()));
        }
    }

    protected Dialog(IShellProvider parentShell) {
        super(parentShell);
        if (this.isResizable()) {
            this.setShellStyle(0x10C70 | Dialog.getDefaultOrientation());
        } else {
            this.setShellStyle(0x10860 | Dialog.getDefaultOrientation());
        }
        this.setBlockOnOpen(true);
    }

    protected void buttonPressed(int buttonId) {
        if (buttonId == 0) {
            this.okPressed();
        } else if (1 == buttonId) {
            this.cancelPressed();
        }
    }

    protected void cancelPressed() {
        this.setReturnCode(1);
        this.close();
    }

    protected int convertHeightInCharsToPixels(int chars) {
        if (this.fontMetrics == null) {
            return 0;
        }
        return Dialog.convertHeightInCharsToPixels(this.fontMetrics, chars);
    }

    protected int convertHorizontalDLUsToPixels(int dlus) {
        if (this.fontMetrics == null) {
            return 0;
        }
        return Dialog.convertHorizontalDLUsToPixels(this.fontMetrics, dlus);
    }

    protected int convertVerticalDLUsToPixels(int dlus) {
        if (this.fontMetrics == null) {
            return 0;
        }
        return Dialog.convertVerticalDLUsToPixels(this.fontMetrics, dlus);
    }

    protected int convertWidthInCharsToPixels(int chars) {
        if (this.fontMetrics == null) {
            return 0;
        }
        return Dialog.convertWidthInCharsToPixels(this.fontMetrics, chars);
    }

    protected Button createButton(Composite parent, int id, String label, boolean defaultButton) {
        Shell shell;
        ++((GridLayout)parent.getLayout()).numColumns;
        Button button = new Button(parent, 8);
        button.setText(label);
        button.setFont(JFaceResources.getDialogFont());
        button.setData((Object)new Integer(id));
        button.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                Dialog.this.buttonPressed((Integer)event.widget.getData());
            }
        });
        if (defaultButton && (shell = parent.getShell()) != null) {
            shell.setDefaultButton(button);
        }
        this.buttons.put(new Integer(id), button);
        this.setButtonLayoutData(button);
        return button;
    }

    protected Control createButtonBar(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.numColumns = 0;
        layout.makeColumnsEqualWidth = true;
        layout.marginWidth = this.convertHorizontalDLUsToPixels(7);
        layout.marginHeight = this.convertVerticalDLUsToPixels(7);
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        GridData data = new GridData(132);
        composite.setLayoutData((Object)data);
        composite.setFont(parent.getFont());
        this.createButtonsForButtonBar(composite);
        return composite;
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createButton(parent, 0, IDialogConstants.OK_LABEL, true);
        this.createButton(parent, 1, IDialogConstants.CANCEL_LABEL, false);
    }

    protected void initializeBounds() {
        Button defaultButton;
        Shell shell = this.getShell();
        if (shell != null && shell.getDisplay().getDismissalAlignment() == 131072 && (defaultButton = shell.getDefaultButton()) != null && this.isContained(this.buttonBar, (Control)defaultButton)) {
            defaultButton.moveBelow(null);
            ((Composite)this.buttonBar).layout();
        }
        super.initializeBounds();
    }

    private boolean isContained(Control container, Control control) {
        Composite parent;
        while ((parent = control.getParent()) != null) {
            if (parent == container) {
                return true;
            }
            control = parent;
        }
        return false;
    }

    protected Control createContents(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 0;
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(1808));
        Dialog.applyDialogFont((Control)composite);
        this.initializeDialogUnits((Control)composite);
        this.dialogArea = this.createDialogArea(composite);
        this.buttonBar = this.createButtonBar(composite);
        return composite;
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = this.convertVerticalDLUsToPixels(7);
        layout.marginWidth = this.convertHorizontalDLUsToPixels(7);
        layout.verticalSpacing = this.convertVerticalDLUsToPixels(4);
        layout.horizontalSpacing = this.convertHorizontalDLUsToPixels(4);
        composite.setLayout((Layout)layout);
        composite.setLayoutData((Object)new GridData(1808));
        Dialog.applyDialogFont((Control)composite);
        return composite;
    }

    protected Button getButton(int id) {
        return (Button)this.buttons.get(new Integer(id));
    }

    protected Control getButtonBar() {
        return this.buttonBar;
    }

    protected Button getCancelButton() {
        return this.getButton(1);
    }

    protected Control getDialogArea() {
        return this.dialogArea;
    }

    public static Image getImage(String key) {
        return JFaceResources.getImageRegistry().get(key);
    }

    protected Button getOKButton() {
        return this.getButton(0);
    }

    protected void initializeDialogUnits(Control control) {
        GC gc = new GC((Drawable)control);
        gc.setFont(JFaceResources.getDialogFont());
        this.fontMetrics = gc.getFontMetrics();
        gc.dispose();
    }

    protected void okPressed() {
        this.setReturnCode(0);
        this.close();
    }

    protected void setButtonLayoutData(Button button) {
        GridData data = new GridData(256);
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        Point minSize = button.computeSize(-1, -1, true);
        data.widthHint = Math.max(widthHint, minSize.x);
        button.setLayoutData((Object)data);
    }

    protected void setButtonLayoutFormData(Button button) {
        FormData data = new FormData();
        int widthHint = this.convertHorizontalDLUsToPixels(61);
        Point minSize = button.computeSize(-1, -1, true);
        data.width = Math.max(widthHint, minSize.x);
        button.setLayoutData((Object)data);
    }

    public boolean close() {
        boolean returnValue;
        if (this.getShell() != null && !this.getShell().isDisposed()) {
            this.saveDialogBounds(this.getShell());
        }
        if (returnValue = super.close()) {
            this.buttons = new HashMap();
            this.buttonBar = null;
            this.dialogArea = null;
        }
        return returnValue;
    }

    public static void applyDialogFont(Control control) {
        if (control == null || Dialog.dialogFontIsDefault()) {
            return;
        }
        Font dialogFont = JFaceResources.getDialogFont();
        Dialog.applyDialogFont(control, dialogFont);
    }

    private static void applyDialogFont(Control control, Font dialogFont) {
        if (Dialog.hasDefaultFont(control)) {
            control.setFont(dialogFont);
        }
        if (control instanceof Composite) {
            Control[] children = ((Composite)control).getChildren();
            int i = 0;
            while (i < children.length) {
                Dialog.applyDialogFont(children[i], dialogFont);
                ++i;
            }
        }
    }

    private static boolean hasDefaultFont(Control control) {
        FontData[] defaultFontData;
        FontData[] controlFontData = control.getFont().getFontData();
        if (controlFontData.length == (defaultFontData = Dialog.getDefaultFont(control).getFontData()).length) {
            int i = 0;
            while (i < controlFontData.length) {
                if (!controlFontData[i].equals((Object)defaultFontData[i])) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    private static Font getDefaultFont(Control control) {
        String fontName = "DEFAULT_FONT_" + control.getClass().getName();
        if (JFaceResources.getFontRegistry().hasValueFor(fontName)) {
            return JFaceResources.getFontRegistry().get(fontName);
        }
        Font cached = control.getFont();
        control.setFont(null);
        Font defaultFont = control.getFont();
        control.setFont(cached);
        JFaceResources.getFontRegistry().put(fontName, defaultFont.getFontData());
        return defaultFont;
    }

    protected static boolean dialogFontIsDefault() {
        Object[] dialogFontData = JFaceResources.getFontRegistry().getFontData("org.eclipse.jface.dialogfont");
        Object[] defaultFontData = JFaceResources.getFontRegistry().getFontData("org.eclipse.jface.defaultfont");
        return Arrays.equals(dialogFontData, defaultFontData);
    }

    public void create() {
        super.create();
        Dialog.applyDialogFont(this.buttonBar);
    }

    public static IDialogBlockedHandler getBlockedHandler() {
        return blockedHandler;
    }

    public static void setBlockedHandler(IDialogBlockedHandler blockedHandler) {
        Dialog.blockedHandler = blockedHandler;
    }

    protected IDialogSettings getDialogBoundsSettings() {
        return null;
    }

    protected int getDialogBoundsStrategy() {
        return 3;
    }

    private void saveDialogBounds(Shell shell) {
        IDialogSettings settings = this.getDialogBoundsSettings();
        if (settings != null) {
            int strategy;
            Point shellLocation = shell.getLocation();
            Point shellSize = shell.getSize();
            Shell parent = this.getParentShell();
            if (parent != null) {
                Point parentLocation = parent.getLocation();
                shellLocation.x -= parentLocation.x;
                shellLocation.y -= parentLocation.y;
            }
            if (((strategy = this.getDialogBoundsStrategy()) & 1) != 0) {
                settings.put(DIALOG_ORIGIN_X, shellLocation.x);
                settings.put(DIALOG_ORIGIN_Y, shellLocation.y);
            }
            if ((strategy & 2) != 0) {
                settings.put(DIALOG_WIDTH, shellSize.x);
                settings.put(DIALOG_HEIGHT, shellSize.y);
                FontData[] fontDatas = JFaceResources.getDialogFont().getFontData();
                if (fontDatas.length > 0) {
                    settings.put(DIALOG_FONT_DATA, fontDatas[0].toString());
                }
            }
        }
    }

    protected Point getInitialSize() {
        IDialogSettings settings;
        Point result = super.getInitialSize();
        if ((this.getDialogBoundsStrategy() & 2) != 0 && (settings = this.getDialogBoundsSettings()) != null) {
            FontData[] fontDatas;
            boolean useStoredBounds = true;
            String previousDialogFontData = settings.get(DIALOG_FONT_DATA);
            if (previousDialogFontData != null && previousDialogFontData.length() > 0 && (fontDatas = JFaceResources.getDialogFont().getFontData()).length > 0) {
                String currentDialogFontData = fontDatas[0].toString();
                useStoredBounds = currentDialogFontData.equalsIgnoreCase(previousDialogFontData);
            }
            if (useStoredBounds) {
                try {
                    int height;
                    int width = settings.getInt(DIALOG_WIDTH);
                    if (width != -1) {
                        result.x = width;
                    }
                    if ((height = settings.getInt(DIALOG_HEIGHT)) != -1) {
                        result.y = height;
                    }
                }
                catch (NumberFormatException numberFormatException) {}
            }
        }
        return result;
    }

    protected Point getInitialLocation(Point initialSize) {
        IDialogSettings settings;
        Point result = super.getInitialLocation(initialSize);
        if ((this.getDialogBoundsStrategy() & 1) != 0 && (settings = this.getDialogBoundsSettings()) != null) {
            try {
                int x = settings.getInt(DIALOG_ORIGIN_X);
                int y = settings.getInt(DIALOG_ORIGIN_Y);
                result = new Point(x, y);
                Shell parent = this.getParentShell();
                if (parent != null) {
                    Point parentLocation = parent.getLocation();
                    result.x += parentLocation.x;
                    result.y += parentLocation.y;
                }
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    protected boolean isResizable() {
        return false;
    }
}

