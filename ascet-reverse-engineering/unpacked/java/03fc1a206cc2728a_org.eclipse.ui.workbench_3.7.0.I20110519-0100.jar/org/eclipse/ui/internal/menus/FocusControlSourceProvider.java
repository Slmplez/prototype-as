/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.menus;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.AbstractSourceProvider;
import org.eclipse.ui.swt.IFocusService;

public class FocusControlSourceProvider
extends AbstractSourceProvider
implements IFocusService {
    private static final String[] PROVIDED_SOURCE_NAMES = new String[]{"activeFocusControlId", "activeFocusControl"};
    Map controlToId = new HashMap();
    private FocusListener focusListener;
    private String currentId;
    private Control currentControl;
    private DisposeListener disposeListener;

    public void addFocusTracker(Control control, String id) {
        if (control.isDisposed()) {
            return;
        }
        this.controlToId.put(control, id);
        control.addFocusListener(this.getFocusListener());
        control.addDisposeListener(this.getDisposeListener());
    }

    private DisposeListener getDisposeListener() {
        if (this.disposeListener == null) {
            this.disposeListener = new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    FocusControlSourceProvider.this.controlToId.remove(e.widget);
                }
            };
        }
        return this.disposeListener;
    }

    private FocusListener getFocusListener() {
        if (this.focusListener == null) {
            this.focusListener = new FocusListener(){

                public void focusGained(FocusEvent e) {
                    FocusControlSourceProvider.this.focusIn(e.widget);
                }

                public void focusLost(FocusEvent e) {
                    FocusControlSourceProvider.this.focusIn(null);
                }
            };
        }
        return this.focusListener;
    }

    private void focusIn(Widget widget) {
        String id = (String)this.controlToId.get(widget);
        if (this.currentId != id) {
            HashMap<String, Object> m = new HashMap<String, Object>();
            if (id == null) {
                this.currentId = null;
                this.currentControl = null;
                m.put("activeFocusControlId", IEvaluationContext.UNDEFINED_VARIABLE);
                m.put("activeFocusControl", IEvaluationContext.UNDEFINED_VARIABLE);
            } else {
                this.currentId = id;
                this.currentControl = (Control)widget;
                m.put("activeFocusControlId", this.currentId);
                m.put("activeFocusControl", this.currentControl);
            }
            this.fireSourceChanged(Integer.MIN_VALUE, m);
        }
    }

    public void removeFocusTracker(Control control) {
        this.controlToId.remove(control);
        if (control.isDisposed()) {
            return;
        }
        control.removeFocusListener(this.getFocusListener());
        control.removeDisposeListener(this.getDisposeListener());
    }

    public void dispose() {
        Iterator i = this.controlToId.keySet().iterator();
        while (i.hasNext()) {
            Control c = (Control)i.next();
            if (c.isDisposed()) continue;
            c.removeFocusListener(this.getFocusListener());
            c.removeDisposeListener(this.getDisposeListener());
        }
        this.controlToId.clear();
        this.controlToId = null;
        this.focusListener = null;
        this.disposeListener = null;
    }

    public Map getCurrentState() {
        HashMap<String, Object> m = new HashMap<String, Object>();
        if (this.currentId == null) {
            m.put("activeFocusControlId", IEvaluationContext.UNDEFINED_VARIABLE);
            m.put("activeFocusControl", IEvaluationContext.UNDEFINED_VARIABLE);
        } else {
            m.put("activeFocusControlId", this.currentId);
            m.put("activeFocusControl", this.currentControl);
        }
        return m;
    }

    public String[] getProvidedSourceNames() {
        return PROVIDED_SOURCE_NAMES;
    }
}

