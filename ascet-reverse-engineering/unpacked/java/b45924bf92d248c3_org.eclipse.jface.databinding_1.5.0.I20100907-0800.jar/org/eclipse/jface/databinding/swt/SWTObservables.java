/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.observable.Observables
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.databinding.observable.list.IObservableList
 *  org.eclipse.core.databinding.observable.value.IObservableValue
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.databinding.swt;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.databinding.observable.Observables;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.databinding.observable.list.IObservableList;
import org.eclipse.core.databinding.observable.value.IObservableValue;
import org.eclipse.jface.databinding.swt.ISWTObservableValue;
import org.eclipse.jface.databinding.swt.WidgetProperties;
import org.eclipse.jface.internal.databinding.swt.SWTDelayedObservableValueDecorator;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Widget;

public class SWTObservables {
    private static List realms = new ArrayList();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static Realm getRealm(Display display) {
        List list = realms;
        synchronized (list) {
            Iterator it = realms.iterator();
            while (it.hasNext()) {
                DisplayRealm displayRealm = (DisplayRealm)((Object)it.next());
                if (displayRealm.display != display) continue;
                return displayRealm;
            }
            DisplayRealm result = new DisplayRealm(display);
            realms.add(result);
            return result;
        }
    }

    public static ISWTObservableValue observeDelayedValue(int delay, ISWTObservableValue observable) {
        return new SWTDelayedObservableValueDecorator(Observables.observeDelayedValue((int)delay, (IObservableValue)observable), observable.getWidget());
    }

    public static ISWTObservableValue observeEnabled(Widget widget) {
        return WidgetProperties.enabled().observe(widget);
    }

    public static ISWTObservableValue observeEnabled(Control control) {
        return SWTObservables.observeEnabled((Widget)control);
    }

    public static ISWTObservableValue observeVisible(Control control) {
        return WidgetProperties.visible().observe((Widget)control);
    }

    public static ISWTObservableValue observeTooltipText(Widget widget) {
        return WidgetProperties.tooltipText().observe(widget);
    }

    public static ISWTObservableValue observeTooltipText(Control control) {
        return SWTObservables.observeTooltipText((Widget)control);
    }

    public static ISWTObservableValue observeSelection(Widget widget) {
        return WidgetProperties.selection().observe(widget);
    }

    public static ISWTObservableValue observeSelection(Control control) {
        return SWTObservables.observeSelection((Widget)control);
    }

    public static ISWTObservableValue observeMin(Control control) {
        return WidgetProperties.minimum().observe((Widget)control);
    }

    public static ISWTObservableValue observeMax(Control control) {
        return WidgetProperties.maximum().observe((Widget)control);
    }

    public static ISWTObservableValue observeText(Control control, int[] events) {
        return WidgetProperties.text(events).observe((Widget)control);
    }

    public static ISWTObservableValue observeText(Control control, int event) {
        return WidgetProperties.text(event).observe((Widget)control);
    }

    public static ISWTObservableValue observeText(Widget widget) {
        return WidgetProperties.text().observe(widget);
    }

    public static ISWTObservableValue observeText(Control control) {
        return SWTObservables.observeText((Widget)control);
    }

    public static ISWTObservableValue observeMessage(Widget widget) {
        return WidgetProperties.message().observe(widget);
    }

    public static ISWTObservableValue observeImage(Widget widget) {
        return WidgetProperties.image().observe(widget);
    }

    public static IObservableList observeItems(Control control) {
        return WidgetProperties.items().observe((Widget)control);
    }

    public static ISWTObservableValue observeSingleSelectionIndex(Control control) {
        return WidgetProperties.singleSelectionIndex().observe((Widget)control);
    }

    public static ISWTObservableValue observeForeground(Control control) {
        return WidgetProperties.foreground().observe((Widget)control);
    }

    public static ISWTObservableValue observeBackground(Control control) {
        return WidgetProperties.background().observe((Widget)control);
    }

    public static ISWTObservableValue observeFont(Control control) {
        return WidgetProperties.font().observe((Widget)control);
    }

    public static ISWTObservableValue observeSize(Control control) {
        return WidgetProperties.size().observe((Widget)control);
    }

    public static ISWTObservableValue observeLocation(Control control) {
        return WidgetProperties.location().observe((Widget)control);
    }

    public static ISWTObservableValue observeFocus(Control control) {
        return WidgetProperties.focused().observe((Widget)control);
    }

    public static ISWTObservableValue observeBounds(Control control) {
        return WidgetProperties.bounds().observe((Widget)control);
    }

    public static ISWTObservableValue observeEditable(Control control) {
        return WidgetProperties.editable().observe((Widget)control);
    }

    private static class DisplayRealm
    extends Realm {
        private Display display;

        private DisplayRealm(Display display) {
            this.display = display;
        }

        public boolean isCurrent() {
            return Display.getCurrent() == this.display;
        }

        public void asyncExec(Runnable runnable) {
            Runnable safeRunnable = new Runnable(this, runnable){
                final /* synthetic */ DisplayRealm this$1;
                private final /* synthetic */ Runnable val$runnable;
                {
                    this.this$1 = displayRealm;
                    this.val$runnable = runnable;
                }

                public void run() {
                    DisplayRealm.access$0(this.val$runnable);
                }
            };
            if (!this.display.isDisposed()) {
                this.display.asyncExec(safeRunnable);
            }
        }

        public void timerExec(int milliseconds, Runnable runnable) {
            if (!this.display.isDisposed()) {
                Runnable safeRunnable = new Runnable(this, runnable){
                    final /* synthetic */ DisplayRealm this$1;
                    private final /* synthetic */ Runnable val$runnable;
                    {
                        this.this$1 = displayRealm;
                        this.val$runnable = runnable;
                    }

                    public void run() {
                        DisplayRealm.access$0(this.val$runnable);
                    }
                };
                this.display.timerExec(milliseconds, safeRunnable);
            }
        }

        public int hashCode() {
            return this.display == null ? 0 : this.display.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (((Object)((Object)this)).getClass() != obj.getClass()) {
                return false;
            }
            DisplayRealm other = (DisplayRealm)((Object)obj);
            return !(this.display == null ? other.display != null : !this.display.equals(other.display));
        }

        static /* synthetic */ void access$0(Runnable runnable) {
            DisplayRealm.safeRun((Runnable)runnable);
        }
    }
}

