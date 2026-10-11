/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.equinox.internal.p2.metadata;

import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.internal.p2.metadata.IRequiredCapability;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.metadata.expression.IMemberProvider;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RequiredCapability
implements IRequiredCapability,
IMemberProvider {
    private final IMatchExpression<IInstallableUnit> filter;
    private final IMatchExpression<IInstallableUnit> matchExpression;
    public static final String MEMBER_FILTER = "filter";
    public static final String MEMBER_MIN = "min";
    public static final String MEMBER_MAX = "max";
    public static final String MEMBER_GREEDY = "greedy";
    public static final String MEMBER_MATCH = "match";
    private final boolean greedy;
    private final int min;
    private final int max;
    private String description;
    private static final IExpression allVersionsExpression;
    private static final IExpression range_II_Expression;
    private static final IExpression range_IN_Expression;
    private static final IExpression range_NI_Expression;
    private static final IExpression range_NN_Expression;
    private static final IExpression strictVersionExpression;
    private static final IExpression openEndedExpression;
    private static final IExpression openEndedNonInclusiveExpression;

    static {
        IExpressionFactory factory = ExpressionUtil.getFactory();
        IExpression xVar = factory.variable("x");
        IExpression nameEqual = factory.equals(factory.member(xVar, "name"), factory.indexedParameter(0));
        IExpression namespaceEqual = factory.equals(factory.member(xVar, "namespace"), factory.indexedParameter(1));
        IExpression versionMember = factory.member(xVar, "version");
        IExpression versionCmpLow = factory.indexedParameter(2);
        IExpression versionEqual = factory.equals(versionMember, versionCmpLow);
        IExpression versionGt = factory.greater(versionMember, versionCmpLow);
        IExpression versionGtEqual = factory.greaterEqual(versionMember, versionCmpLow);
        IExpression versionCmpHigh = factory.indexedParameter(3);
        IExpression versionLt = factory.less(versionMember, versionCmpHigh);
        IExpression versionLtEqual = factory.lessEqual(versionMember, versionCmpHigh);
        IExpression pvMember = factory.member(factory.thisVariable(), "providedCapabilities");
        allVersionsExpression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual})));
        strictVersionExpression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionEqual})));
        openEndedExpression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGtEqual})));
        openEndedNonInclusiveExpression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGt})));
        range_II_Expression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGtEqual, versionLtEqual})));
        range_IN_Expression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGtEqual, versionLt})));
        range_NI_Expression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGt, versionLtEqual})));
        range_NN_Expression = factory.exists(pvMember, factory.lambda(xVar, factory.and(new IExpression[]{nameEqual, namespaceEqual, versionGt, versionLt})));
    }

    public RequiredCapability(String namespace, String name, VersionRange range, String filter, boolean optional, boolean multiple) {
        this(namespace, name, range, filter, optional, multiple, true);
    }

    public RequiredCapability(IMatchExpression<IInstallableUnit> requirement, IMatchExpression<IInstallableUnit> filter, int min, int max, boolean greedy, String description) {
        this.matchExpression = requirement;
        this.filter = filter;
        this.min = min;
        this.max = max;
        this.greedy = greedy;
        this.description = description;
    }

    public RequiredCapability(String namespace, String name, VersionRange range, String filter, boolean optional, boolean multiple, boolean greedy) {
        this(namespace, name, range, filter == null ? null : InstallableUnit.parseFilter(filter), optional ? 0 : 1, multiple ? Integer.MAX_VALUE : 1, greedy, null);
    }

    public RequiredCapability(String namespace, String name, VersionRange range, IMatchExpression<IInstallableUnit> filter, int min, int max, boolean greedy, String description) {
        Assert.isNotNull((Object)namespace);
        Assert.isNotNull((Object)name);
        IExpressionFactory factory = ExpressionUtil.getFactory();
        this.matchExpression = range == null || range.equals(VersionRange.emptyRange) ? factory.matchExpression(allVersionsExpression, new Object[]{name, namespace}) : (range.getMinimum().equals(range.getMaximum()) ? factory.matchExpression(strictVersionExpression, new Object[]{name, namespace, range.getMinimum()}) : (range.getMaximum().equals(Version.MAX_VERSION) ? factory.matchExpression(range.getIncludeMinimum() ? openEndedExpression : openEndedNonInclusiveExpression, new Object[]{name, namespace, range.getMinimum()}) : factory.matchExpression(range.getIncludeMinimum() ? (range.getIncludeMaximum() ? range_II_Expression : range_IN_Expression) : (range.getIncludeMaximum() ? range_NI_Expression : range_NN_Expression), new Object[]{name, namespace, range.getMinimum(), range.getMaximum()})));
        this.min = min;
        this.max = max;
        this.greedy = greedy;
        this.filter = filter;
        this.description = description;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IRequirement)) {
            return false;
        }
        IRequirement other = (IRequirement)obj;
        if (this.filter == null ? other.getFilter() != null : !this.filter.equals(other.getFilter())) {
            return false;
        }
        return this.min == other.getMin() && this.max == other.getMax() && this.greedy == other.isGreedy() && this.matchExpression.equals(other.getMatches());
    }

    @Override
    public String getName() {
        return (String)this.matchExpression.getParameters()[0];
    }

    @Override
    public String getNamespace() {
        return (String)this.matchExpression.getParameters()[1];
    }

    @Override
    public VersionRange getRange() {
        return RequiredCapability.extractRange(this.matchExpression);
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.filter == null ? 0 : this.filter.hashCode());
        result = 31 * result + this.matchExpression.hashCode();
        return result;
    }

    @Override
    public boolean isGreedy() {
        return this.greedy;
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        if (this.matchExpression.getParameters().length == 0) {
            return this.matchExpression.toString();
        }
        if ("org.eclipse.equinox.p2.iu".equals(this.getNamespace())) {
            result.append("");
        } else if ("osgi.bundle".equals(this.getNamespace())) {
            result.append("bundle");
        } else if ("java.package".equals(this.getNamespace())) {
            result.append("package");
        } else {
            result.append(this.getNamespace());
        }
        if (result.length() > 0) {
            result.append(' ');
        }
        result.append(this.getName());
        result.append(' ');
        VersionRange range = this.getRange();
        if (range.getMinimum().equals(range.getMaximum())) {
            result.append('[').append(range.getMinimum()).append(']');
        } else {
            result.append(range);
        }
        return result.toString();
    }

    @Override
    public int getMin() {
        return this.min;
    }

    @Override
    public int getMax() {
        return this.max;
    }

    @Override
    public IMatchExpression<IInstallableUnit> getMatches() {
        return this.matchExpression;
    }

    @Override
    public IMatchExpression<IInstallableUnit> getFilter() {
        return this.filter;
    }

    @Override
    public boolean isMatch(IInstallableUnit candidate) {
        return this.matchExpression.isMatch(candidate);
    }

    public static boolean isVersionStrict(IMatchExpression<IInstallableUnit> matchExpression) {
        return ExpressionUtil.getOperand(matchExpression) == strictVersionExpression;
    }

    public static String extractName(IMatchExpression<IInstallableUnit> matchExpression) {
        RequiredCapability.assertValid(matchExpression);
        return (String)matchExpression.getParameters()[0];
    }

    public static String extractNamespace(IMatchExpression<IInstallableUnit> matchExpression) {
        RequiredCapability.assertValid(matchExpression);
        return (String)matchExpression.getParameters()[1];
    }

    public static VersionRange extractRange(IMatchExpression<IInstallableUnit> matchExpression) {
        IExpression expr = RequiredCapability.assertValid(matchExpression);
        Object[] params = matchExpression.getParameters();
        if (params.length < 3) {
            return VersionRange.emptyRange;
        }
        Version v = (Version)params[2];
        if (params.length < 4) {
            if (expr.equals(strictVersionExpression)) {
                return new VersionRange(v, true, v, true);
            }
            return new VersionRange(v, expr.equals(openEndedExpression), Version.MAX_VERSION, true);
        }
        Version h = (Version)params[3];
        return new VersionRange(v, expr.equals(range_II_Expression) || expr.equals(range_IN_Expression), h, expr.equals(range_II_Expression) || expr.equals(range_NI_Expression));
    }

    public static boolean isSimpleRequirement(IMatchExpression<IInstallableUnit> matchExpression) {
        return RequiredCapability.isPredefined(ExpressionUtil.getOperand(matchExpression));
    }

    private static IExpression assertValid(IMatchExpression<IInstallableUnit> matchExpression) {
        IExpression expr = ExpressionUtil.getOperand(matchExpression);
        if (!RequiredCapability.isPredefined(expr)) {
            throw new IllegalArgumentException();
        }
        return expr;
    }

    private static boolean isPredefined(IExpression expr) {
        return expr.equals(allVersionsExpression) || expr.equals(range_II_Expression) || expr.equals(range_IN_Expression) || expr.equals(range_NI_Expression) || expr.equals(range_NN_Expression) || expr.equals(strictVersionExpression) || expr.equals(openEndedExpression) || expr.equals(openEndedNonInclusiveExpression);
    }

    @Override
    public Object getMember(String memberName) {
        if (MEMBER_FILTER == memberName) {
            return this.filter;
        }
        if (MEMBER_MIN == memberName) {
            return new Integer(this.min);
        }
        if (MEMBER_MAX == memberName) {
            return new Integer(this.max);
        }
        if (MEMBER_GREEDY == memberName) {
            return this.greedy;
        }
        if (MEMBER_MATCH == memberName) {
            return this.matchExpression;
        }
        throw new IllegalArgumentException(new StringBuffer("No such member: ").append(memberName).toString());
    }

    @Override
    public String getDescription() {
        return this.description;
    }
}

