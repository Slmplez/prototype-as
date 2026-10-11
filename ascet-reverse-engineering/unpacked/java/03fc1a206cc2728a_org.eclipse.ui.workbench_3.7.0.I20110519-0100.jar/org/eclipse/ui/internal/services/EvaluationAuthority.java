/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.util.Tracing
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.services;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.services.EvaluationReference;
import org.eclipse.ui.internal.services.ExpressionAuthority;
import org.eclipse.ui.services.IEvaluationReference;

public class EvaluationAuthority
extends ExpressionAuthority {
    private static final String COMPONENT = "EVALUATION";
    private final Map cachesBySourceName = new HashMap();
    private ListenerList serviceListeners = new ListenerList();
    private int notifying = 0;

    public void addEvaluationListener(IEvaluationReference ref) {
        String[] sourceNames = this.getNames(ref);
        int i = 0;
        while (i < sourceNames.length) {
            Expression expression;
            HashSet<IEvaluationReference> caches;
            HashMap<Expression, HashSet<IEvaluationReference>> cachesByExpression = (HashMap<Expression, HashSet<IEvaluationReference>>)this.cachesBySourceName.get(sourceNames[i]);
            if (cachesByExpression == null) {
                cachesByExpression = new HashMap<Expression, HashSet<IEvaluationReference>>(1);
                this.cachesBySourceName.put(sourceNames[i], cachesByExpression);
            }
            if ((caches = (HashSet<IEvaluationReference>)cachesByExpression.get(expression = ref.getExpression())) == null) {
                caches = new HashSet<IEvaluationReference>();
                cachesByExpression.put(expression, caches);
            }
            caches.add(ref);
            ++i;
        }
        boolean result = this.evaluate(ref);
        this.firePropertyChange(ref, null, this.valueOf(result));
    }

    private Boolean valueOf(boolean result) {
        return result ? Boolean.TRUE : Boolean.FALSE;
    }

    private String[] getNames(IEvaluationReference ref) {
        ExpressionInfo info = new ExpressionInfo();
        ref.getExpression().collectExpressionInfo(info);
        ArrayList<String> allNames = new ArrayList<String>(Arrays.asList(info.getAccessedVariableNames()));
        if (info.hasDefaultVariableAccess()) {
            allNames.add("selection");
        }
        allNames.addAll(Arrays.asList(info.getAccessedPropertyNames()));
        return allNames.toArray(new String[allNames.size()]);
    }

    protected void sourceChanged(int sourcePriority) {
    }

    protected void sourceChanged(String[] sourceNames) {
        this.startSourceChange(sourceNames);
        try {
            int i = 0;
            while (i < sourceNames.length) {
                HashMap cachesByExpression = (HashMap)this.cachesBySourceName.get(sourceNames[i]);
                if (cachesByExpression != null) {
                    Collection v = cachesByExpression.values();
                    Set[] expressionCaches = v.toArray(new Set[v.size()]);
                    int j = 0;
                    while (j < expressionCaches.length) {
                        if (expressionCaches[j].size() > 0) {
                            EvaluationReference[] refs = expressionCaches[j].toArray(new EvaluationReference[expressionCaches[j].size()]);
                            this.refsWithSameExpression(refs);
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        finally {
            this.endSourceChange(sourceNames);
        }
    }

    private void refsWithSameExpression(EvaluationReference[] refs) {
        int k = 0;
        while (k < refs.length && !refs[k].isPostingChanges()) {
            ++k;
        }
        if (k >= refs.length) {
            return;
        }
        EvaluationReference ref = refs[k];
        boolean oldValue = this.evaluate(ref);
        ref.clearResult();
        boolean newValue = this.evaluate(ref);
        if (oldValue != newValue) {
            this.firePropertyChange(ref, this.valueOf(oldValue), this.valueOf(newValue));
        }
        ++k;
        while (k < refs.length) {
            ref = refs[k];
            if (ref.isPostingChanges() && (oldValue = this.evaluate(ref)) != newValue) {
                ref.setResult(newValue);
                this.firePropertyChange(ref, this.valueOf(oldValue), this.valueOf(newValue));
            }
            ++k;
        }
    }

    private void startSourceChange(String[] sourceNames) {
        if (Policy.DEBUG_SOURCES) {
            Tracing.printTrace((String)COMPONENT, (String)("start source changed: " + Arrays.asList(sourceNames)));
        }
        ++this.notifying;
        if (this.notifying == 1) {
            this.fireServiceChange("org.eclipse.ui.services.notifying", Boolean.FALSE, Boolean.TRUE);
        }
    }

    private void endSourceChange(String[] sourceNames) {
        if (Policy.DEBUG_SOURCES) {
            Tracing.printTrace((String)COMPONENT, (String)("end source changed: " + Arrays.asList(sourceNames)));
        }
        if (this.notifying == 1) {
            this.fireServiceChange("org.eclipse.ui.services.notifying", Boolean.TRUE, Boolean.FALSE);
        }
        --this.notifying;
    }

    public void removeEvaluationListener(IEvaluationReference ref) {
        String[] sourceNames = this.getNames(ref);
        int i = 0;
        while (i < sourceNames.length) {
            HashMap cachesByExpression = (HashMap)this.cachesBySourceName.get(sourceNames[i]);
            if (cachesByExpression != null) {
                Set caches = (Set)cachesByExpression.get(ref.getExpression());
                if (caches != null) {
                    caches.remove(ref);
                    if (caches.isEmpty()) {
                        cachesByExpression.remove(ref.getExpression());
                    }
                }
                if (cachesByExpression.isEmpty()) {
                    this.cachesBySourceName.remove(sourceNames[i]);
                }
            }
            ++i;
        }
        boolean result = this.evaluate(ref);
        this.firePropertyChange(ref, this.valueOf(result), null);
    }

    private void firePropertyChange(IEvaluationReference ref, Object oldValue, Object newValue) {
        ref.getListener().propertyChange(new PropertyChangeEvent((Object)ref, ref.getProperty(), oldValue, newValue));
    }

    private void fireServiceChange(final String property, final Object oldValue, final Object newValue) {
        Object[] listeners = this.serviceListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final IPropertyChangeListener listener = (IPropertyChangeListener)listeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                    WorkbenchPlugin.log(exception);
                }

                public void run() throws Exception {
                    listener.propertyChange(new PropertyChangeEvent((Object)EvaluationAuthority.this, property, oldValue, newValue));
                }
            });
            ++i;
        }
    }

    public void addServiceListener(IPropertyChangeListener listener) {
        this.serviceListeners.add((Object)listener);
    }

    public void removeServiceListener(IPropertyChangeListener listener) {
        this.serviceListeners.remove((Object)listener);
    }

    final void updateShellKludge() {
        this.updateCurrentState();
        this.sourceChanged(new String[]{"activeShell"});
    }

    final Shell getActiveShell() {
        return (Shell)this.getVariable("activeShell");
    }
}

