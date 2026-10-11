/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.Platform;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.core.model.IWatchExpression;
import org.eclipse.debug.core.model.IWatchExpressionDelegate;
import org.eclipse.debug.core.model.IWatchExpressionListener;
import org.eclipse.debug.core.model.IWatchExpressionResult;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.ExpressionManager;

public class WatchExpression
implements IWatchExpression {
    protected String fExpressionText;
    protected IWatchExpressionResult fResult;
    protected IDebugElement fCurrentContext;
    private boolean fEnabled = true;
    private boolean fPending = false;
    static /* synthetic */ Class class$0;

    public WatchExpression(String expression) {
        this.fExpressionText = expression;
    }

    public WatchExpression(String expressionText, boolean enabled) {
        this(expressionText);
        this.fEnabled = enabled;
    }

    public void evaluate() {
        IDebugElement context = this.fCurrentContext;
        if (context == null) {
            return;
        }
        IWatchExpressionListener listener = new IWatchExpressionListener(){

            public void watchEvaluationFinished(IWatchExpressionResult result) {
                WatchExpression.this.setResult(result);
            }
        };
        this.setPending(true);
        IWatchExpressionDelegate delegate = DebugPlugin.getDefault().getExpressionManager().newWatchExpressionDelegate(context.getModelIdentifier());
        if (delegate != null) {
            delegate.evaluateExpression(this.getExpressionText(), context, listener);
        } else {
            listener.watchEvaluationFinished(new IWatchExpressionResult(){

                public IValue getValue() {
                    return null;
                }

                public boolean hasErrors() {
                    return true;
                }

                public String[] getErrorMessages() {
                    return new String[]{DebugCoreMessages.WatchExpression_0};
                }

                public String getExpressionText() {
                    return WatchExpression.this.getExpressionText();
                }

                public DebugException getException() {
                    return null;
                }
            });
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setExpressionContext(IDebugElement context) {
        WatchExpression watchExpression = this;
        synchronized (watchExpression) {
            this.fCurrentContext = context;
        }
        if (context == null) {
            this.setResult(null);
            return;
        }
        if (!this.isEnabled()) {
            return;
        }
        this.evaluate();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setResult(IWatchExpressionResult result) {
        WatchExpression watchExpression = this;
        synchronized (watchExpression) {
            this.fResult = result;
            this.fPending = false;
        }
        this.fireEvent(new DebugEvent(this, 16, 256));
        this.fireEvent(new DebugEvent(this, 16, 512));
    }

    protected void fireEvent(DebugEvent event) {
        DebugPlugin.getDefault().fireDebugEventSet(new DebugEvent[]{event});
    }

    private void watchExpressionChanged() {
        ((ExpressionManager)DebugPlugin.getDefault().getExpressionManager()).watchExpressionChanged(this);
    }

    public String getExpressionText() {
        return this.fExpressionText;
    }

    public synchronized IValue getValue() {
        if (this.fResult == null) {
            return null;
        }
        return this.fResult.getValue();
    }

    public IDebugTarget getDebugTarget() {
        IDebugElement element = this.fCurrentContext;
        if (element != null) {
            return element.getDebugTarget();
        }
        return null;
    }

    public void dispose() {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public String getModelIdentifier() {
        WatchExpression watchExpression = this;
        synchronized (watchExpression) {
            IValue value = this.getValue();
            if (value != null) {
                return value.getModelIdentifier();
            }
            if (this.fCurrentContext != null) {
                return this.fCurrentContext.getModelIdentifier();
            }
        }
        return DebugPlugin.getUniqueIdentifier();
    }

    public ILaunch getLaunch() {
        IDebugTarget debugTarget = this.getDebugTarget();
        if (debugTarget != null) {
            return debugTarget.getLaunch();
        }
        return null;
    }

    public Object getAdapter(Class adapter) {
        ILaunch launch;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.ILaunchConfiguration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz) && (launch = this.getLaunch()) != null) {
            return launch.getLaunchConfiguration();
        }
        return Platform.getAdapterManager().getAdapter((Object)this, adapter);
    }

    public void setEnabled(boolean enabled) {
        this.fEnabled = enabled;
        this.watchExpressionChanged();
        this.evaluate();
    }

    public void setExpressionText(String expression) {
        this.fExpressionText = expression;
        this.watchExpressionChanged();
        this.evaluate();
    }

    public boolean isEnabled() {
        return this.fEnabled;
    }

    public synchronized boolean isPending() {
        return this.fPending;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setPending(boolean pending) {
        WatchExpression watchExpression = this;
        synchronized (watchExpression) {
            this.fPending = pending;
        }
        this.fireEvent(new DebugEvent(this, 16, 256));
    }

    public boolean hasErrors() {
        return this.fResult != null && this.fResult.hasErrors();
    }

    public String[] getErrorMessages() {
        if (this.fResult == null) {
            return new String[0];
        }
        return this.fResult.getErrorMessages();
    }
}

