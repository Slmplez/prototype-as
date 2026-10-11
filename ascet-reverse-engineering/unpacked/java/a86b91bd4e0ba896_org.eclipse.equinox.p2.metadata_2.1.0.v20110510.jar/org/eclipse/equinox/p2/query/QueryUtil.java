/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.query;

import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.equinox.internal.p2.metadata.expression.ContextExpression;
import org.eclipse.equinox.internal.p2.metadata.expression.Expression;
import org.eclipse.equinox.internal.p2.metadata.expression.ExpressionFactory;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IContextExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.query.CompoundQueryable;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;
import org.eclipse.equinox.p2.query.ExpressionQuery;
import org.eclipse.equinox.p2.query.IMatchQuery;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class QueryUtil {
    public static final IQuery<IInstallableUnit> ALL_UNITS = QueryUtil.createMatchQuery(ExpressionUtil.TRUE_EXPRESSION, new Object[0]);
    public static final String ANY = "*";
    public static final IQuery<IInstallableUnit> NO_UNITS = QueryUtil.createQuery("limit(0)", new Object[0]);
    public static final String PROP_TYPE_CATEGORY = "org.eclipse.equinox.p2.type.category";
    public static final String PROP_TYPE_GROUP = "org.eclipse.equinox.p2.type.group";
    public static final String PROP_TYPE_PATCH = "org.eclipse.equinox.p2.type.patch";
    private static final IExpression matchesRequirementsExpression = ExpressionUtil.parse("$0.exists(r | this ~= r)");
    private static final IExpression matchIU_ID = ExpressionUtil.parse("id == $0");
    private static final IExpression matchIU_IDAndRange = ExpressionUtil.parse("id == $0 && version ~= $1");
    private static final IExpression matchIU_IDAndVersion = ExpressionUtil.parse("id == $0 && version == $1");
    private static final IExpression matchIU_Range = ExpressionUtil.parse("version ~= $0");
    private static final IExpression matchIU_Version = ExpressionUtil.parse("version == $0");
    private static final IExpression matchIU_propAny = ExpressionUtil.parse("properties[$0] != null");
    private static final IExpression matchIU_propNull = ExpressionUtil.parse("properties[$0] == null");
    private static final IExpression matchIU_propTrue = ExpressionUtil.parse("properties[$0] == true");
    private static final IExpression matchIU_propValue = ExpressionUtil.parse("properties[$0] == $1");
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public static <T> IQueryable<T> compoundQueryable(Collection<? extends IQueryable<T>> queryables) {
        return new CompoundQueryable(queryables.toArray(new IQueryable[queryables.size()]));
    }

    public static <T> IQueryable<T> compoundQueryable(IQueryable<T> query1, IQueryable<T> query2) {
        return new CompoundQueryable(new IQueryable[]{query1, query2});
    }

    public static <T> IQuery<T> createCompoundQuery(Collection<? extends IQuery<? extends T>> queries, boolean and) {
        IExpression compound;
        IExpressionFactory factory = ExpressionUtil.getFactory();
        int top = queries.size();
        if (top == 1) {
            return queries.iterator().next();
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<Object> elementClass = clazz;
        if (top == 0) {
            return QueryUtil.createMatchQuery(elementClass, ExpressionUtil.TRUE_EXPRESSION, new Object[0]);
        }
        IExpression[] expressions = new IExpression[top];
        boolean justBooleans = true;
        boolean justContexts = true;
        int idx = 0;
        for (IQuery<T> query : queries) {
            if (query instanceof IMatchQuery) {
                justContexts = false;
            } else {
                justBooleans = false;
            }
            IExpression expr = query.getExpression();
            if (expr == null) {
                expr = factory.toExpression(query);
            }
            Class<T> ec = ExpressionQuery.getElementClass(query);
            if (elementClass == null) {
                elementClass = ec;
            } else if (elementClass != ec) {
                if (elementClass.isAssignableFrom(ec)) {
                    if (and) {
                        elementClass = ec;
                    }
                } else if (ec.isAssignableFrom(elementClass) && !and) {
                    elementClass = ec;
                }
            }
            expressions[idx++] = expr;
        }
        if (justBooleans) {
            compound = and ? factory.and(expressions) : factory.or(expressions);
            return QueryUtil.createMatchQuery(elementClass, compound, new Object[0]);
        }
        if (!justContexts) {
            idx = 0;
            while (idx < expressions.length) {
                expressions[idx] = QueryUtil.makeContextExpression(factory, expressions[idx]);
                ++idx;
            }
        }
        compound = expressions[0];
        idx = 1;
        while (idx < expressions.length) {
            compound = and ? factory.intersect(compound, expressions[idx]) : factory.union(compound, expressions[idx]);
            ++idx;
        }
        return QueryUtil.createQuery(elementClass, compound, new Object[0]);
    }

    public static <T> IQuery<T> createCompoundQuery(IQuery<? extends T> query1, IQuery<T> query2, boolean and) {
        ArrayList<IQuery<T>> queries = new ArrayList<IQuery<T>>(2);
        queries.add(query1);
        queries.add(query2);
        return QueryUtil.createCompoundQuery(queries, and);
    }

    public static IQuery<IInstallableUnit> createIUAnyQuery() {
        return ALL_UNITS;
    }

    public static IQuery<IInstallableUnit> createIUCategoryMemberQuery(IInstallableUnit category) {
        if (QueryUtil.isCategory(category)) {
            return QueryUtil.createMatchQuery(matchesRequirementsExpression, new Object[]{category.getRequirements()});
        }
        return NO_UNITS;
    }

    public static IQuery<IInstallableUnit> createIUCategoryQuery() {
        return QueryUtil.createIUPropertyQuery(PROP_TYPE_CATEGORY, Boolean.TRUE.toString());
    }

    public static IQuery<IInstallableUnit> createIUGroupQuery() {
        return QueryUtil.createIUPropertyQuery(PROP_TYPE_GROUP, Boolean.TRUE.toString());
    }

    public static IQuery<IInstallableUnit> createIUPatchQuery() {
        return QueryUtil.createIUPropertyQuery(PROP_TYPE_PATCH, Boolean.TRUE.toString());
    }

    public static IQuery<IInstallableUnit> createIUPropertyQuery(String propertyName, String propertyValue) {
        if (propertyName == null) {
            return QueryUtil.createMatchQuery(ExpressionUtil.TRUE_EXPRESSION, new Object[0]);
        }
        if (propertyValue == null) {
            return QueryUtil.createMatchQuery(matchIU_propNull, new Object[]{propertyName});
        }
        if (ANY.equals(propertyValue)) {
            return QueryUtil.createMatchQuery(matchIU_propAny, new Object[]{propertyName});
        }
        if (Boolean.valueOf(propertyValue).booleanValue()) {
            return QueryUtil.createMatchQuery(matchIU_propTrue, new Object[]{propertyName});
        }
        return QueryUtil.createMatchQuery(matchIU_propValue, new Object[]{propertyName, propertyValue});
    }

    public static IQuery<IInstallableUnit> createIUQuery(IVersionedId versionedId) {
        return QueryUtil.createIUQuery(versionedId.getId(), versionedId.getVersion());
    }

    public static IQuery<IInstallableUnit> createIUQuery(String id) {
        return id == null ? ALL_UNITS : QueryUtil.createMatchQuery(matchIU_ID, new Object[]{id});
    }

    public static IQuery<IInstallableUnit> createIUQuery(String id, Version version) {
        if (version == null || version.equals(Version.emptyVersion)) {
            return QueryUtil.createIUQuery(id);
        }
        if (id == null) {
            return QueryUtil.createMatchQuery(matchIU_Version, new Object[]{version});
        }
        return QueryUtil.createMatchQuery(matchIU_IDAndVersion, new Object[]{id, version});
    }

    public static IQuery<IInstallableUnit> createIUQuery(String id, VersionRange range) {
        if (range == null || range.equals(VersionRange.emptyRange)) {
            return QueryUtil.createIUQuery(id);
        }
        if (id == null) {
            return QueryUtil.createMatchQuery(matchIU_Range, new Object[]{range});
        }
        return QueryUtil.createMatchQuery(matchIU_IDAndRange, new Object[]{id, range});
    }

    public static IQuery<IInstallableUnit> createLatestIUQuery() {
        return QueryUtil.createQuery(ExpressionUtil.getFactory().latest(ExpressionFactory.EVERYTHING), new Object[0]);
    }

    public static <T extends IVersionedId> IQuery<T> createLatestQuery(IQuery<T> query) {
        IContextExpression<T> ctxExpr = ExpressionQuery.createExpression(query);
        IExpressionFactory factory = ExpressionUtil.getFactory();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.equinox.p2.metadata.IVersionedId");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> elementClass = clazz;
        return QueryUtil.createQuery(elementClass, factory.latest(((ContextExpression)ctxExpr).operand), ctxExpr.getParameters());
    }

    public static <T> IQuery<T> createLimitQuery(IQuery<T> query, int limit) {
        IContextExpression<T> ctxExpr = ExpressionQuery.createExpression(query);
        IExpressionFactory factory = ExpressionUtil.getFactory();
        return QueryUtil.createQuery(ExpressionQuery.getElementClass(query), factory.limit((IExpression)((ContextExpression)ctxExpr).operand, limit), ctxExpr.getParameters());
    }

    public static IQuery<IInstallableUnit> createMatchQuery(IExpression matchExpression, Object[] parameters) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ExpressionMatchQuery<IInstallableUnit>(clazz, matchExpression, parameters);
    }

    public static IQuery<IInstallableUnit> createMatchQuery(String matchExpression, Object[] parameters) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ExpressionMatchQuery<IInstallableUnit>(clazz, matchExpression, parameters);
    }

    public static <T> IQuery<T> createMatchQuery(Class<? extends T> matchingClass, IExpression matchExpression, Object[] parameters) {
        return new ExpressionMatchQuery<T>(matchingClass, matchExpression, parameters);
    }

    public static <T> IQuery<T> createMatchQuery(Class<? extends T> matchingClass, String matchExpression, Object[] parameters) {
        return new ExpressionMatchQuery<T>(matchingClass, matchExpression, parameters);
    }

    public static <T> IQuery<T> createPipeQuery(Collection<? extends IQuery<? extends T>> queries) {
        IQuery<T> iQuery;
        IExpressionFactory factory = ExpressionUtil.getFactory();
        int top = queries.size();
        IExpression[] expressions = new IExpression[top];
        int idx = 0;
        for (IQuery<T> query : queries) {
            IExpression expr = query.getExpression();
            if (expr == null) {
                expr = factory.toExpression(query);
            }
            expressions[idx++] = expr;
        }
        IExpression pipe = factory.pipe(expressions);
        Expression.VariableFinder finder = new Expression.VariableFinder(ExpressionFactory.EVERYTHING);
        pipe.accept(finder);
        if (finder.isFound()) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            iQuery = QueryUtil.createQuery(clazz, pipe, new Object[0]);
        } else {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            iQuery = QueryUtil.createMatchQuery(clazz, pipe, new Object[0]);
        }
        return iQuery;
    }

    public static <T> IQuery<T> createPipeQuery(IQuery<? extends T> query1, IQuery<? extends T> query2) {
        ArrayList<IQuery<? extends T>> queries = new ArrayList<IQuery<? extends T>>(2);
        queries.add(query1);
        queries.add(query2);
        return QueryUtil.createPipeQuery(queries);
    }

    public static IQuery<IInstallableUnit> createQuery(IExpression expression, Object[] parameters) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ExpressionQuery<IInstallableUnit>(clazz, expression, parameters);
    }

    public static IQuery<IInstallableUnit> createQuery(String expression, Object[] parameters) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new ExpressionQuery<IInstallableUnit>(clazz, expression, parameters);
    }

    public static <T> IQuery<T> createQuery(Class<? extends T> matchingClass, IExpression expression, Object[] parameters) {
        return new ExpressionQuery<T>(matchingClass, expression, parameters);
    }

    public static <T> IQuery<T> createQuery(Class<? extends T> matchingClass, String expression, Object[] parameters) {
        return new ExpressionQuery<T>(matchingClass, expression, parameters);
    }

    public static boolean isCategory(IInstallableUnit iu) {
        String value = iu.getProperty(PROP_TYPE_CATEGORY);
        return value != null && value.equals(Boolean.TRUE.toString());
    }

    public static boolean isFragment(IInstallableUnit iu) {
        return iu instanceof IInstallableUnitFragment;
    }

    public static boolean isGroup(IInstallableUnit iu) {
        String value = iu.getProperty(PROP_TYPE_GROUP);
        return value != null && value.equals(Boolean.TRUE.toString());
    }

    public static boolean isPatch(IInstallableUnit iu) {
        String value = iu.getProperty(PROP_TYPE_PATCH);
        return value != null && value.equals(Boolean.TRUE.toString());
    }

    private static IExpression makeContextExpression(IExpressionFactory factory, IExpression expr) {
        Expression.VariableFinder finder = new Expression.VariableFinder(ExpressionFactory.EVERYTHING);
        expr.accept(finder);
        if (!finder.isFound()) {
            expr = factory.select(ExpressionFactory.EVERYTHING, factory.lambda(ExpressionFactory.THIS, expr));
        }
        return expr;
    }
}

