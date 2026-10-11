/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.browser.MozillaDelegate;
import org.eclipse.swt.custom.Bullet;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.GlyphMetrics;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsICertificateDialogs;
import org.eclipse.swt.internal.mozilla.nsIDOMWindow;
import org.eclipse.swt.internal.mozilla.nsIServiceManager;
import org.eclipse.swt.internal.mozilla.nsIX509Cert;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Widget;

class PromptDialog
extends Dialog {
    PromptDialog(Shell parent, int style) {
        super(parent, style);
    }

    PromptDialog(Shell parent) {
        this(parent, 0);
    }

    void alertCheck(String title, String text, String check, final int[] checkValue) {
        Button checkButton;
        Shell parent = this.getParent();
        final Shell shell = new Shell(parent, 67680);
        if (title != null) {
            shell.setText(title);
        }
        GridLayout gridLayout = new GridLayout();
        shell.setLayout(gridLayout);
        Label label = new Label(shell, 64);
        label.setText(text);
        GridData data = new GridData();
        Monitor monitor = parent.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        int width = label.computeSize((int)-1, (int)-1).x;
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        label.setLayoutData(data);
        Button button = checkButton = check != null ? new Button(shell, 32) : null;
        if (checkButton != null) {
            checkButton.setText(check);
            checkButton.setSelection(checkValue[0] != 0);
            data = new GridData();
            data.horizontalAlignment = 1;
            checkButton.setLayoutData(data);
        }
        Button okButton = new Button(shell, 8);
        okButton.setText(SWT.getMessage("SWT_OK"));
        data = new GridData();
        data.horizontalAlignment = 2;
        okButton.setLayoutData(data);
        okButton.addListener(13, new Listener(){

            public void handleEvent(Event event) {
                if (checkButton != null) {
                    checkValue[0] = checkButton.getSelection() ? 1 : 0;
                }
                shell.close();
            }
        });
        shell.pack();
        shell.open();
        Display display = parent.getDisplay();
        while (!shell.isDisposed()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
    }

    boolean invalidCert(final Browser browser, String message, String[] problems, final nsIX509Cert cert) {
        Shell parent = this.getParent();
        Display display = parent.getDisplay();
        Monitor monitor = parent.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        final Shell shell = new Shell(parent, 67680);
        shell.setText(Compatibility.getMessage("SWT_InvalidCert_Title"));
        shell.setLayout(new GridLayout());
        Composite messageComposite = new Composite(shell, 0);
        messageComposite.setLayout(new GridLayout(2, false));
        Image image = display.getSystemImage(8);
        new Label(messageComposite, 0).setImage(image);
        Text text = new Text(messageComposite, 64);
        text.setLayoutData(new GridData(4, 0x1000000, true, false));
        text.setEditable(false);
        text.setBackground(shell.getBackground());
        text.setText(message);
        int width = messageComposite.computeSize((int)-1, (int)-1).x;
        GridData data = new GridData();
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        messageComposite.setLayoutData(data);
        StyledText problemsText = new StyledText(shell, 64);
        problemsText.setMargins(30, 0, 30, 0);
        problemsText.setEditable(false);
        problemsText.setBackground(shell.getBackground());
        int i = 0;
        while (i < problems.length) {
            problemsText.append(String.valueOf(problems[i]) + '\n');
            ++i;
        }
        StyleRange style = new StyleRange();
        style.metrics = new GlyphMetrics(0, 0, 30);
        Bullet bullet0 = new Bullet(style);
        problemsText.setLineBullet(0, problems.length, bullet0);
        width = problemsText.computeSize((int)-1, (int)-1).x;
        data = new GridData();
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        problemsText.setLayoutData(data);
        text = new Text(shell, 4);
        text.setEditable(false);
        text.setBackground(shell.getBackground());
        text.setText(Compatibility.getMessage("SWT_InvalidCert_Connect"));
        new Label(shell, 0);
        final Browser localBrowser = new Browser(shell, browser.getStyle());
        data = new GridData();
        data.exclude = true;
        localBrowser.setLayoutData(data);
        Composite buttonsComposite = new Composite(shell, 0);
        buttonsComposite.setLayout(new GridLayout(3, true));
        buttonsComposite.setLayoutData(new GridData(0x1000000, 0x1000000, false, false));
        Button viewCertButton = new Button(buttonsComposite, 8);
        viewCertButton.setLayoutData(new GridData(4, 4, false, false));
        viewCertButton.setText(Compatibility.getMessage("SWT_ViewCertificate"));
        viewCertButton.addListener(13, new Listener(){

            public void handleEvent(Event event) {
                int[] result = new int[1];
                int rc = XPCOM.NS_GetServiceManager(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIServiceManager serviceManager = new nsIServiceManager(result[0]);
                result[0] = 0;
                byte[] aContractID = MozillaDelegate.wcsToMbcs(null, "@mozilla.org/nsCertificateDialogs;1", true);
                rc = serviceManager.GetServiceByContractID(aContractID, nsICertificateDialogs.NS_ICERTIFICATEDIALOGS_IID, result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                serviceManager.Release();
                nsICertificateDialogs dialogs = new nsICertificateDialogs(result[0]);
                result[0] = 0;
                Runnable runnable = new Runnable(this, browser){
                    final /* synthetic */ 2 this$1;
                    private final /* synthetic */ Browser val$browser;
                    {
                        this.this$1 = var1_1;
                        this.val$browser = browser;
                    }

                    public void run() {
                        this.val$browser.getDisplay().timerExec(1000, this);
                    }
                };
                runnable.run();
                rc = ((Mozilla)localBrowser.webBrowser).webBrowser.GetContentDOMWindow(result);
                if (rc != 0) {
                    Mozilla.error(rc);
                }
                if (result[0] == 0) {
                    Mozilla.error(-2147467262);
                }
                nsIDOMWindow window = new nsIDOMWindow(result[0]);
                result[0] = 0;
                rc = dialogs.ViewCert(window.getAddress(), cert.getAddress());
                browser.getDisplay().timerExec(-1, runnable);
                window.Release();
                dialogs.Release();
            }
        });
        final Button okButton = new Button(buttonsComposite, 8);
        okButton.setLayoutData(new GridData(4, 4, false, false));
        okButton.setText(Compatibility.getMessage("SWT_OK"));
        Button cancelButton = new Button(buttonsComposite, 8);
        cancelButton.setLayoutData(new GridData(4, 4, false, false));
        cancelButton.setText(Compatibility.getMessage("SWT_Cancel"));
        final boolean[] result = new boolean[1];
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                shell.dispose();
                result[0] = event.widget == okButton;
            }
        };
        okButton.addListener(13, listener);
        cancelButton.addListener(13, listener);
        cancelButton.setFocus();
        shell.setDefaultButton(cancelButton);
        shell.pack();
        shell.open();
        while (!shell.isDisposed()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
        return result[0];
    }

    void confirmEx(String title, String text, String check, String button0, String button1, String button2, int defaultIndex, final int[] checkValue, final int[] result) {
        Shell parent = this.getParent();
        final Shell shell = new Shell(parent, 67680);
        shell.setText(title);
        GridLayout gridLayout = new GridLayout();
        shell.setLayout(gridLayout);
        Label label = new Label(shell, 64);
        label.setText(text);
        GridData data = new GridData();
        Monitor monitor = parent.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        int width = label.computeSize((int)-1, (int)-1).x;
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        label.setLayoutData(data);
        final Button[] buttons = new Button[4];
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                if (buttons[0] != null) {
                    checkValue[0] = buttons[0].getSelection() ? 1 : 0;
                }
                Widget widget = event.widget;
                int i = 1;
                while (i < buttons.length) {
                    if (widget == buttons[i]) {
                        result[0] = i - 1;
                        break;
                    }
                    ++i;
                }
                shell.close();
            }
        };
        if (check != null) {
            buttons[0] = new Button(shell, 32);
            buttons[0].setText(check);
            buttons[0].setSelection(checkValue[0] != 0);
            data = new GridData();
            data.horizontalAlignment = 1;
            buttons[0].setLayoutData(data);
        }
        Composite composite = new Composite(shell, 0);
        data = new GridData();
        data.horizontalAlignment = 2;
        composite.setLayoutData(data);
        GridLayout layout = new GridLayout();
        layout.makeColumnsEqualWidth = true;
        composite.setLayout(layout);
        int buttonCount = 0;
        if (button0 != null) {
            buttons[1] = new Button(composite, 8);
            buttons[1].setText(button0);
            buttons[1].addListener(13, listener);
            buttons[1].setLayoutData(new GridData(768));
            ++buttonCount;
        }
        if (button1 != null) {
            buttons[2] = new Button(composite, 8);
            buttons[2].setText(button1);
            buttons[2].addListener(13, listener);
            buttons[2].setLayoutData(new GridData(768));
            ++buttonCount;
        }
        if (button2 != null) {
            buttons[3] = new Button(composite, 8);
            buttons[3].setText(button2);
            buttons[3].addListener(13, listener);
            buttons[3].setLayoutData(new GridData(768));
            ++buttonCount;
        }
        layout.numColumns = buttonCount;
        Button defaultButton = buttons[defaultIndex + 1];
        if (defaultButton != null) {
            shell.setDefaultButton(defaultButton);
        }
        shell.pack();
        shell.open();
        Display display = parent.getDisplay();
        while (!shell.isDisposed()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
    }

    void prompt(String title, String text, String check, final String[] value, final int[] checkValue, final int[] result) {
        Shell parent = this.getParent();
        final Shell shell = new Shell(parent, 67680);
        if (title != null) {
            shell.setText(title);
        }
        GridLayout gridLayout = new GridLayout();
        shell.setLayout(gridLayout);
        Label label = new Label(shell, 64);
        label.setText(text);
        GridData data = new GridData();
        Monitor monitor = parent.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        int width = label.computeSize((int)-1, (int)-1).x;
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        label.setLayoutData(data);
        final Text valueText = new Text(shell, 2048);
        if (value[0] != null) {
            valueText.setText(value[0]);
        }
        data = new GridData();
        width = valueText.computeSize((int)-1, (int)-1).x;
        if (width > maxWidth) {
            data.widthHint = maxWidth;
        }
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        valueText.setLayoutData(data);
        final Button[] buttons = new Button[3];
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                if (buttons[0] != null) {
                    checkValue[0] = buttons[0].getSelection() ? 1 : 0;
                }
                value[0] = valueText.getText();
                result[0] = event.widget == buttons[1] ? 1 : 0;
                shell.close();
            }
        };
        if (check != null) {
            buttons[0] = new Button(shell, 32);
            buttons[0].setText(check);
            buttons[0].setSelection(checkValue[0] != 0);
            data = new GridData();
            data.horizontalAlignment = 1;
            buttons[0].setLayoutData(data);
        }
        Composite composite = new Composite(shell, 0);
        data = new GridData();
        data.horizontalAlignment = 2;
        composite.setLayoutData(data);
        composite.setLayout(new GridLayout(2, true));
        buttons[1] = new Button(composite, 8);
        buttons[1].setText(SWT.getMessage("SWT_OK"));
        buttons[1].setLayoutData(new GridData(768));
        buttons[1].addListener(13, listener);
        buttons[2] = new Button(composite, 8);
        buttons[2].setText(SWT.getMessage("SWT_Cancel"));
        buttons[2].setLayoutData(new GridData(768));
        buttons[2].addListener(13, listener);
        shell.pack();
        shell.open();
        Display display = parent.getDisplay();
        while (!shell.isDisposed()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
    }

    void promptUsernameAndPassword(String title, String text, String check, final String[] user, final String[] pass, final int[] checkValue, final int[] result) {
        Shell parent = this.getParent();
        final Shell shell = new Shell(parent, 67680);
        shell.setText(title);
        GridLayout gridLayout = new GridLayout();
        shell.setLayout(gridLayout);
        Label label = new Label(shell, 64);
        label.setText(text);
        GridData data = new GridData();
        Monitor monitor = parent.getMonitor();
        int maxWidth = monitor.getBounds().width * 2 / 3;
        int width = label.computeSize((int)-1, (int)-1).x;
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        label.setLayoutData(data);
        Label userLabel = new Label(shell, 0);
        userLabel.setText(SWT.getMessage("SWT_Username"));
        final Text userText = new Text(shell, 2048);
        if (user[0] != null) {
            userText.setText(user[0]);
        }
        data = new GridData();
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        userText.setLayoutData(data);
        Label passwordLabel = new Label(shell, 0);
        passwordLabel.setText(SWT.getMessage("SWT_Password"));
        final Text passwordText = new Text(shell, 0x400800);
        if (pass[0] != null) {
            passwordText.setText(pass[0]);
        }
        data = new GridData();
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        passwordText.setLayoutData(data);
        final Button[] buttons = new Button[3];
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                if (buttons[0] != null) {
                    checkValue[0] = buttons[0].getSelection() ? 1 : 0;
                }
                user[0] = userText.getText();
                pass[0] = passwordText.getText();
                result[0] = event.widget == buttons[1] ? 1 : 0;
                shell.close();
            }
        };
        if (check != null) {
            buttons[0] = new Button(shell, 32);
            buttons[0].setText(check);
            buttons[0].setSelection(checkValue[0] != 0);
            data = new GridData();
            data.horizontalAlignment = 1;
            buttons[0].setLayoutData(data);
        }
        Composite composite = new Composite(shell, 0);
        data = new GridData();
        data.horizontalAlignment = 2;
        composite.setLayoutData(data);
        composite.setLayout(new GridLayout(2, true));
        buttons[1] = new Button(composite, 8);
        buttons[1].setText(SWT.getMessage("SWT_OK"));
        buttons[1].setLayoutData(new GridData(768));
        buttons[1].addListener(13, listener);
        buttons[2] = new Button(composite, 8);
        buttons[2].setText(SWT.getMessage("SWT_Cancel"));
        buttons[2].setLayoutData(new GridData(768));
        buttons[2].addListener(13, listener);
        shell.setDefaultButton(buttons[1]);
        shell.pack();
        shell.open();
        Display display = parent.getDisplay();
        while (!shell.isDisposed()) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
    }
}

