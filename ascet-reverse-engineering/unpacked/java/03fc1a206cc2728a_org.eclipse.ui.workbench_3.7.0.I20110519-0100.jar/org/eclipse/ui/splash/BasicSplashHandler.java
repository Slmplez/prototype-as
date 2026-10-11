/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.dialogs.ProgressIndicator
 *  org.eclipse.jface.window.Window
 *  org.eclipse.jface.wizard.ProgressMonitorPart
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.splash;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.dialogs.ProgressIndicator;
import org.eclipse.jface.window.Window;
import org.eclipse.jface.wizard.ProgressMonitorPart;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.splash.AbstractSplashHandler;

public abstract class BasicSplashHandler
extends AbstractSplashHandler {
    private Color foreground = null;
    private AbsolutePositionProgressMonitorPart monitor;
    private Rectangle messageRect;
    private Rectangle progressRect;

    public IProgressMonitor getBundleProgressMonitor() {
        if (this.monitor == null) {
            Composite parent = new Composite((Composite)this.getSplash(), Window.getDefaultOrientation());
            Point size = this.getSplash().getSize();
            parent.setBounds(new Rectangle(0, 0, size.x, size.y));
            this.monitor = new AbsolutePositionProgressMonitorPart(parent);
            this.monitor.setSize(size);
            if (this.progressRect != null) {
                this.monitor.getProgressIndicator().setBounds(this.progressRect);
            } else {
                this.monitor.getProgressIndicator().setVisible(false);
            }
            if (this.messageRect != null) {
                this.monitor.getProgressText().setBounds(this.messageRect);
            } else {
                this.monitor.getProgressText().setVisible(false);
            }
            if (this.foreground != null) {
                this.monitor.getProgressText().setForeground(this.foreground);
            }
            this.monitor.setBackgroundMode(2);
            this.monitor.setBackgroundImage(this.getSplash().getShell().getBackgroundImage());
        }
        return this.monitor;
    }

    public void dispose() {
        super.dispose();
        if (this.foreground != null) {
            this.foreground.dispose();
        }
    }

    protected void setForeground(RGB foregroundRGB) {
        if (this.monitor != null) {
            return;
        }
        if (this.foreground != null) {
            this.foreground.dispose();
        }
        this.foreground = new Color((Device)this.getSplash().getShell().getDisplay(), foregroundRGB);
    }

    protected Color getForeground() {
        return this.foreground;
    }

    protected void setMessageRect(Rectangle messageRect) {
        this.messageRect = messageRect;
    }

    protected void setProgressRect(Rectangle progressRect) {
        this.progressRect = progressRect;
    }

    protected Composite getContent() {
        return (Composite)this.getBundleProgressMonitor();
    }

    private void updateUI(final Runnable r) {
        Shell splashShell = this.getSplash();
        if (splashShell == null || splashShell.isDisposed()) {
            return;
        }
        Display display = splashShell.getDisplay();
        if (Thread.currentThread() == display.getThread()) {
            r.run();
        } else {
            StartupThreading.StartupRunnable startupRunnable = new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    r.run();
                }
            };
            display.asyncExec((Runnable)startupRunnable);
        }
    }

    class AbsolutePositionProgressMonitorPart
    extends ProgressMonitorPart {
        public AbsolutePositionProgressMonitorPart(Composite parent) {
            super(parent, null);
            this.setLayout(null);
        }

        public ProgressIndicator getProgressIndicator() {
            return this.fProgressIndicator;
        }

        public Label getProgressText() {
            return this.fLabel;
        }

        public void beginTask(String name, int totalWork) {
            BasicSplashHandler.this.updateUI(new Runnable(this, name, totalWork){
                final /* synthetic */ AbsolutePositionProgressMonitorPart this$1;
                private final /* synthetic */ String val$name;
                private final /* synthetic */ int val$totalWork;
                {
                    this.this$1 = absolutePositionProgressMonitorPart;
                    this.val$name = string;
                    this.val$totalWork = n;
                }

                public void run() {
                    if (this.this$1.isDisposed()) {
                        return;
                    }
                    AbsolutePositionProgressMonitorPart.access$0(this.this$1, this.val$name, this.val$totalWork);
                }
            });
        }

        public void done() {
            BasicSplashHandler.this.updateUI(new Runnable(this){
                final /* synthetic */ AbsolutePositionProgressMonitorPart this$1;
                {
                    this.this$1 = absolutePositionProgressMonitorPart;
                }

                public void run() {
                    if (this.this$1.isDisposed()) {
                        return;
                    }
                    AbsolutePositionProgressMonitorPart.access$1(this.this$1);
                }
            });
        }

        public void internalWorked(double work) {
            BasicSplashHandler.this.updateUI(new Runnable(this, work){
                final /* synthetic */ AbsolutePositionProgressMonitorPart this$1;
                private final /* synthetic */ double val$work;
                {
                    this.this$1 = absolutePositionProgressMonitorPart;
                    this.val$work = d;
                }

                public void run() {
                    if (this.this$1.isDisposed()) {
                        return;
                    }
                    AbsolutePositionProgressMonitorPart.access$2(this.this$1, this.val$work);
                }
            });
        }

        public void setFont(Font font) {
            BasicSplashHandler.this.updateUI(new Runnable(this, font){
                final /* synthetic */ AbsolutePositionProgressMonitorPart this$1;
                private final /* synthetic */ Font val$font;
                {
                    this.this$1 = absolutePositionProgressMonitorPart;
                    this.val$font = font;
                }

                public void run() {
                    if (this.this$1.isDisposed()) {
                        return;
                    }
                    AbsolutePositionProgressMonitorPart.access$3(this.this$1, this.val$font);
                }
            });
        }

        protected void updateLabel() {
            BasicSplashHandler.this.updateUI(new Runnable(this){
                final /* synthetic */ AbsolutePositionProgressMonitorPart this$1;
                {
                    this.this$1 = absolutePositionProgressMonitorPart;
                }

                public void run() {
                    if (this.this$1.isDisposed()) {
                        return;
                    }
                    AbsolutePositionProgressMonitorPart.access$4(this.this$1);
                }
            });
        }

        static /* synthetic */ void access$0(AbsolutePositionProgressMonitorPart absolutePositionProgressMonitorPart, String string, int n) {
            super.beginTask(string, n);
        }

        static /* synthetic */ void access$1(AbsolutePositionProgressMonitorPart absolutePositionProgressMonitorPart) {
            super.done();
        }

        static /* synthetic */ void access$2(AbsolutePositionProgressMonitorPart absolutePositionProgressMonitorPart, double d) {
            super.internalWorked(d);
        }

        static /* synthetic */ void access$3(AbsolutePositionProgressMonitorPart absolutePositionProgressMonitorPart, Font font) {
            super.setFont(font);
        }

        static /* synthetic */ void access$4(AbsolutePositionProgressMonitorPart absolutePositionProgressMonitorPart) {
            super.updateLabel();
        }
    }
}

