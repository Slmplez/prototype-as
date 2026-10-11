/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.core.internal.expressions;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.expressions.IIterable;
import org.eclipse.core.internal.expressions.CompositeExpression;
import org.eclipse.core.internal.expressions.DefaultVariable;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.w3c.dom.Element;

public class IterateExpression
extends CompositeExpression {
    private static final String ATT_OPERATOR = "operator";
    private static final String ATT_IF_EMPTY = "ifEmpty";
    private static final int OR = 1;
    private static final int AND = 2;
    private static final int HASH_INITIAL;
    private int fOperator;
    private Boolean fEmptyResult;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.internal.expressions.IterateExpression");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    public IterateExpression(IConfigurationElement configElement) throws CoreException {
        String opValue = configElement.getAttribute(ATT_OPERATOR);
        this.initializeOperatorValue(opValue);
        this.initializeEmptyResultValue(configElement.getAttribute(ATT_IF_EMPTY));
    }

    public IterateExpression(Element element) throws CoreException {
        String opValue = element.getAttribute(ATT_OPERATOR);
        this.initializeOperatorValue(opValue.length() > 0 ? opValue : null);
        String ifEmpty = element.getAttribute(ATT_IF_EMPTY);
        this.initializeEmptyResultValue(ifEmpty.length() > 0 ? ifEmpty : null);
    }

    public IterateExpression(String opValue) throws CoreException {
        this.initializeOperatorValue(opValue);
    }

    public IterateExpression(String opValue, String ifEmpty) throws CoreException {
        this.initializeOperatorValue(opValue);
        this.initializeEmptyResultValue(ifEmpty);
    }

    private void initializeOperatorValue(String opValue) throws CoreException {
        if (opValue == null) {
            this.fOperator = 2;
        } else {
            Expressions.checkAttribute(ATT_OPERATOR, opValue, new String[]{"and", "or"});
            this.fOperator = "and".equals(opValue) ? 2 : 1;
        }
    }

    private void initializeEmptyResultValue(String value) {
        this.fEmptyResult = value == null ? null : Boolean.valueOf(value);
    }

    public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
        Object var = context.getDefaultVariable();
        if (var instanceof Collection) {
            Collection col = (Collection)var;
            switch (col.size()) {
                case 0: {
                    if (this.fEmptyResult == null) {
                        return this.fOperator == 2 ? EvaluationResult.TRUE : EvaluationResult.FALSE;
                    }
                    return this.fEmptyResult != false ? EvaluationResult.TRUE : EvaluationResult.FALSE;
                }
                case 1: {
                    if (!(col instanceof List)) break;
                    return this.evaluateAnd(new DefaultVariable(context, ((List)col).get(0)));
                }
            }
            IteratePool iter = new IteratePool(context, col.iterator());
            EvaluationResult result = this.fOperator == 2 ? EvaluationResult.TRUE : EvaluationResult.FALSE;
            while (iter.hasNext()) {
                iter.next();
                switch (this.fOperator) {
                    case 1: {
                        result = result.or(this.evaluateAnd(iter));
                        if (result != EvaluationResult.TRUE) break;
                        return result;
                    }
                    case 2: {
                        result = result.and(this.evaluateAnd(iter));
                        if (result == EvaluationResult.TRUE) break;
                        return result;
                    }
                }
            }
            return result;
        }
        IIterable iterable = Expressions.getAsIIterable(var, this);
        if (iterable == null) {
            return EvaluationResult.NOT_LOADED;
        }
        int count = 0;
        IteratePool iter = new IteratePool(context, iterable.iterator());
        EvaluationResult result = this.fOperator == 2 ? EvaluationResult.TRUE : EvaluationResult.FALSE;
        while (iter.hasNext()) {
            iter.next();
            ++count;
            switch (this.fOperator) {
                case 1: {
                    result = result.or(this.evaluateAnd(iter));
                    if (result != EvaluationResult.TRUE) break;
                    return result;
                }
                case 2: {
                    result = result.and(this.evaluateAnd(iter));
                    if (result == EvaluationResult.TRUE) break;
                    return result;
                }
            }
        }
        if (count > 0) {
            return result;
        }
        if (this.fEmptyResult == null) {
            return this.fOperator == 2 ? EvaluationResult.TRUE : EvaluationResult.FALSE;
        }
        return this.fEmptyResult != false ? EvaluationResult.TRUE : EvaluationResult.FALSE;
    }

    public void collectExpressionInfo(ExpressionInfo info) {
        info.markDefaultVariableAccessed();
        super.collectExpressionInfo(info);
    }

    public boolean equals(Object object) {
        if (!(object instanceof IterateExpression)) {
            return false;
        }
        IterateExpression that = (IterateExpression)object;
        return this.fOperator == that.fOperator && IterateExpression.equals(this.fExpressions, that.fExpressions);
    }

    protected int computeHashCode() {
        return HASH_INITIAL * 89 + IterateExpression.hashCode(this.fExpressions) * 89 + this.fOperator;
    }

    private static class IteratePool
    implements IEvaluationContext {
        private Iterator fIterator;
        private Object fDefaultVariable;
        private IEvaluationContext fParent;

        public IteratePool(IEvaluationContext parent, Iterator iterator) {
            Assert.isNotNull((Object)parent);
            Assert.isNotNull((Object)iterator);
            this.fParent = parent;
            this.fIterator = iterator;
        }

        public IEvaluationContext getParent() {
            return this.fParent;
        }

        public IEvaluationContext getRoot() {
            return this.fParent.getRoot();
        }

        public Object getDefaultVariable() {
            return this.fDefaultVariable;
        }

        public boolean getAllowPluginActivation() {
            return this.fParent.getAllowPluginActivation();
        }

        public void setAllowPluginActivation(boolean value) {
            this.fParent.setAllowPluginActivation(value);
        }

        public void addVariable(String name, Object value) {
            this.fParent.addVariable(name, value);
        }

        public Object removeVariable(String name) {
            return this.fParent.removeVariable(name);
        }

        public Object getVariable(String name) {
            return this.fParent.getVariable(name);
        }

        public Object resolveVariable(String name, Object[] args) throws CoreException {
            return this.fParent.resolveVariable(name, args);
        }

        public Object next() {
            this.fDefaultVariable = this.fIterator.next();
            return this.fDefaultVariable;
        }

        public boolean hasNext() {
            return this.fIterator.hasNext();
        }
    }
}

