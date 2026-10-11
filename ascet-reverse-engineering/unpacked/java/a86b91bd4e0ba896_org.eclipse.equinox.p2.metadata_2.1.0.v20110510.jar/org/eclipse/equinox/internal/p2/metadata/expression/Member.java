/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.Unary;
import org.eclipse.equinox.internal.p2.metadata.expression.Variable;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpressionVisitor;
import org.eclipse.equinox.p2.metadata.expression.IMemberProvider;

public abstract class Member
extends Unary {
    static final Object[] NO_ARGS = new Object[0];
    protected final Expression[] argExpressions;
    final String name;

    static Member createDynamicMember(Expression operand, String name) {
        return new DynamicMember(operand, name);
    }

    protected Member(Expression operand, String name, Expression[] args) {
        super(operand);
        this.name = name.intern();
        this.argExpressions = args;
    }

    public boolean accept(IExpressionVisitor visitor) {
        if (super.accept(visitor)) {
            int idx = 0;
            while (idx < this.argExpressions.length) {
                if (!this.argExpressions[idx].accept(visitor)) {
                    return false;
                }
                ++idx;
            }
        }
        return true;
    }

    public int compareTo(Expression e) {
        int cmp = super.compareTo(e);
        if (cmp == 0 && (cmp = this.name.compareTo(((Member)e).name)) == 0) {
            cmp = Member.compare(this.argExpressions, ((Member)e).argExpressions);
        }
        return cmp;
    }

    public boolean equals(Object o) {
        if (super.equals(o)) {
            Member mo = (Member)o;
            return this.name.equals(mo.name) && Member.equals(this.argExpressions, mo.argExpressions);
        }
        return false;
    }

    public int getExpressionType() {
        return 13;
    }

    public String getName() {
        return this.name;
    }

    public String getOperator() {
        return ".";
    }

    public int getPriority() {
        return 3;
    }

    public int hashCode() {
        int result = 31 + this.name.hashCode();
        result = 31 * result + this.operand.hashCode();
        return 31 * result + Member.hashCode(this.argExpressions);
    }

    public void toString(StringBuffer bld, Variable rootVariable) {
        if (this.operand != rootVariable) {
            Member.appendOperand(bld, rootVariable, this.operand, this.getPriority());
            bld.append('.');
        }
        bld.append(this.name);
        if (this.argExpressions.length > 0) {
            bld.append('(');
            Member.elementsToString(bld, rootVariable, this.argExpressions);
            bld.append(')');
        }
    }

    public static final class DynamicMember
    extends Member {
        private static final String GET_PREFIX = "get";
        private static final String IS_PREFIX = "is";
        private static final Class<?>[] NO_ARG_TYPES = new Class[0];
        private Class<?> lastClass;
        private transient Method method;
        private transient String methodName;

        DynamicMember(Expression operand, String name) {
            super(operand, name, Expression.emptyArray);
        }

        public Object evaluate(IEvaluationContext context) {
            return this.invoke(this.operand.evaluate(context));
        }

        public final Object invoke(Object self) {
            if (self instanceof IMemberProvider) {
                return ((IMemberProvider)self).getMember(this.name);
            }
            if (self == null) {
                throw new IllegalArgumentException("Cannot access member '" + this.name + "' in null");
            }
            Class<?> c = self.getClass();
            DynamicMember dynamicMember = this;
            synchronized (dynamicMember) {
                Exception checked;
                if (this.methodName == null) {
                    String n = this.name;
                    if (!n.startsWith(GET_PREFIX) && !n.startsWith(IS_PREFIX)) {
                        n = GET_PREFIX + Character.toUpperCase(n.charAt(0)) + n.substring(1);
                    }
                    this.methodName = n;
                }
                if (this.lastClass == null || !this.lastClass.isAssignableFrom(c)) {
                    Method m;
                    while (true) {
                        try {
                            m = c.getMethod(this.methodName, NO_ARG_TYPES);
                            if (!Modifier.isPublic(m.getModifiers())) {
                                throw new NoSuchMethodException();
                            }
                        }
                        catch (NoSuchMethodException noSuchMethodException) {
                            if (this.methodName.startsWith(GET_PREFIX)) {
                                this.methodName = IS_PREFIX + Character.toUpperCase(this.name.charAt(0)) + this.name.substring(1);
                                continue;
                            }
                            if (this.methodName.startsWith(IS_PREFIX)) {
                                this.methodName = this.name;
                                continue;
                            }
                            throw new IllegalArgumentException("Cannot find a public member '" + this.name + "' in a " + self.getClass().getName());
                        }
                        break;
                    }
                    m.setAccessible(true);
                    this.lastClass = c;
                    this.method = m;
                }
                try {
                    return this.method.invoke(self, NO_ARGS);
                }
                catch (IllegalArgumentException e) {
                    throw e;
                }
                catch (IllegalAccessException e) {
                    checked = e;
                }
                catch (InvocationTargetException e) {
                    Throwable cause = e.getTargetException();
                    if (cause instanceof RuntimeException) {
                        throw (RuntimeException)cause;
                    }
                    if (cause instanceof Error) {
                        throw (Error)cause;
                    }
                    checked = (Exception)cause;
                }
                throw new RuntimeException("Problem invoking " + this.methodName + " on a " + self.getClass().getName(), checked);
            }
        }
    }

    public static class EmptyMember
    extends LengthMember {
        EmptyMember(Expression operand) {
            super(operand);
        }

        public Object evaluate(IEvaluationContext context) {
            Object val = this.operand.evaluate(context);
            boolean empty = val instanceof Iterator ? !((Iterator)val).hasNext() : this.getLength(val) == 0;
            return empty;
        }
    }

    public static class LengthMember
    extends Member {
        private static final Integer ZERO = new Integer(0);

        LengthMember(Expression operand) {
            super(operand, "length", Expression.emptyArray);
        }

        public Object evaluate(IEvaluationContext context) {
            int len = this.getLength(this.operand.evaluate(context));
            return len == 0 ? ZERO : new Integer(len);
        }

        int getLength(Object val) {
            if (val == null) {
                return 0;
            }
            if (val.getClass().isArray()) {
                return Array.getLength(val);
            }
            if (val instanceof Collection) {
                return ((Collection)val).size();
            }
            if (val instanceof String) {
                return ((String)val).length();
            }
            if (val instanceof Map) {
                return ((Map)val).size();
            }
            return 0;
        }
    }
}

