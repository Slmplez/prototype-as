/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Filter
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.expression.Binary;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.LDAPApproximation;
import org.eclipse.equinox.internal.p2.metadata.expression.LDAPFilter;
import org.eclipse.equinox.internal.p2.metadata.expression.Literal;
import org.eclipse.equinox.internal.p2.metadata.expression.MemberProvider;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.metadata.expression.SimplePattern;
import org.osgi.framework.Filter;

public class Matches
extends Binary {
    protected Matches(Expression lhs, Expression rhs) {
        super(lhs, rhs);
    }

    public Object evaluate(IEvaluationContext context) {
        return this.match(this.lhs.evaluate(context), this.rhs.evaluate(context));
    }

    protected boolean match(Object lval, Object rval) {
        if (lval == null || rval == null) {
            return false;
        }
        if (rval instanceof IRequirement) {
            IRequirement requirement = (IRequirement)rval;
            if (lval instanceof IInstallableUnit) {
                return ((IInstallableUnit)lval).satisfies(requirement);
            }
        } else if (rval instanceof VersionRange) {
            VersionRange range = (VersionRange)rval;
            if (lval instanceof Version) {
                return range.isIncluded((Version)lval);
            }
            if (lval instanceof String) {
                return range.isIncluded(Version.create((String)lval));
            }
        } else if (rval instanceof SimplePattern) {
            if (lval instanceof CharSequence) {
                return ((SimplePattern)rval).isMatch((CharSequence)lval);
            }
            if (lval instanceof Character || lval instanceof Number || lval instanceof Boolean) {
                return ((SimplePattern)rval).isMatch(lval.toString());
            }
        } else {
            if (rval instanceof LDAPFilter) {
                return ((LDAPFilter)rval).isMatch(MemberProvider.create(lval, true));
            }
            if (rval instanceof Filter) {
                if (lval instanceof IInstallableUnit) {
                    return ((Filter)rval).match(new Hashtable<String, String>(((IInstallableUnit)lval).getProperties()));
                }
                if (lval instanceof Dictionary) {
                    return ((Filter)rval).match((Dictionary)lval);
                }
                if (lval instanceof Map) {
                    return ((Filter)rval).match(new Hashtable((Map)lval));
                }
            } else if (rval instanceof Locale) {
                if (lval instanceof String) {
                    return Matches.matchLocaleVariants((Locale)rval, (String)lval);
                }
            } else {
                if (rval instanceof IMatchExpression) {
                    IMatchExpression me = (IMatchExpression)rval;
                    return me.isMatch(lval);
                }
                if (rval instanceof IUpdateDescriptor) {
                    if (lval instanceof IInstallableUnit) {
                        return ((IUpdateDescriptor)rval).isUpdateOf((IInstallableUnit)lval);
                    }
                } else if (rval instanceof LDAPApproximation) {
                    if (lval instanceof CharSequence) {
                        return ((LDAPApproximation)rval).isMatch((CharSequence)lval);
                    }
                    if (lval instanceof Character || lval instanceof Number || lval instanceof Boolean) {
                        return ((LDAPApproximation)rval).isMatch(lval.toString());
                    }
                } else if (rval instanceof Class) {
                    Class rclass = (Class)rval;
                    return lval instanceof Class ? rclass.isAssignableFrom((Class)lval) : rclass.isInstance(lval);
                }
            }
        }
        throw new IllegalArgumentException("Cannot match a " + lval.getClass().getName() + " with a " + rval.getClass().getName());
    }

    public int getExpressionType() {
        return 12;
    }

    public String getOperator() {
        return "~=";
    }

    public void toLDAPString(StringBuffer buf) {
        if (!(this.rhs instanceof Literal)) {
            throw new UnsupportedOperationException();
        }
        boolean escapeWild = true;
        Object val = this.rhs.evaluate(null);
        buf.append('(');
        this.appendLDAPAttribute(buf);
        if (val instanceof LDAPApproximation) {
            buf.append(this.getOperator());
        } else if (val instanceof SimplePattern) {
            buf.append('=');
            escapeWild = false;
        } else {
            throw new UnsupportedOperationException();
        }
        Matches.appendLDAPEscaped(buf, val.toString(), escapeWild);
        buf.append(')');
    }

    private static boolean equals(String a, String b, int startPos, int endPos) {
        if (endPos - startPos != b.length()) {
            return false;
        }
        int bidx = 0;
        while (startPos < endPos) {
            if (a.charAt(startPos++) == b.charAt(bidx++)) continue;
            return false;
        }
        return true;
    }

    private static boolean matchLocaleVariants(Locale rval, String lval) {
        int uscore = lval.indexOf(95);
        if (uscore < 0) {
            return lval.equals(rval.getLanguage());
        }
        if (!Matches.equals(lval, rval.getLanguage(), 0, uscore)) {
            return false;
        }
        int countryStart = uscore + 1;
        return (uscore = lval.indexOf(95, countryStart)) < 0 ? Matches.equals(lval, rval.getCountry(), countryStart, lval.length()) : Matches.equals(lval, rval.getCountry(), countryStart, uscore) && Matches.equals(lval, rval.getVariant(), uscore + 1, lval.length());
    }
}

