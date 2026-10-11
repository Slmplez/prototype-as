/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.Permission;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.internal.permadmin.SecurityRow;
import org.osgi.service.condpermadmin.Condition;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EquinoxSecurityManager
extends SecurityManager {
    private final ThreadLocal<CheckContext> localCheckContext = new ThreadLocal();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.internal.permadmin.EquinoxSecurityManager$CheckPermissionAction");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class c = clazz;
        Class clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.osgi.internal.permadmin.EquinoxSecurityManager$CheckContext");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        c = clazz2;
        c.getName();
    }

    boolean addConditionsForDomain(SecurityRow.Decision[] results) {
        CheckContext cc = this.localCheckContext.get();
        if (cc == null) {
            return false;
        }
        List<SecurityRow.Decision[]> condSets = cc.depthCondSets.get(cc.getDepth());
        if (condSets == null) {
            condSets = new ArrayList<SecurityRow.Decision[]>(1);
            cc.depthCondSets.set(cc.getDepth(), condSets);
        }
        condSets.add(results);
        return true;
    }

    boolean inCheckPermission() {
        return this.localCheckContext.get() != null;
    }

    @Override
    public void checkPermission(Permission perm, Object context) {
        AccessController.doPrivileged(new CheckPermissionAction(this, perm, context));
    }

    public AccessControlContext getContextToBeChecked() {
        CheckContext cc = this.localCheckContext.get();
        if (cc != null && cc.accs != null && !cc.accs.isEmpty()) {
            return cc.accs.get(cc.accs.size() - 1);
        }
        return null;
    }

    void internalCheckPermission(Permission perm, Object context) {
        AccessControlContext acc = (AccessControlContext)context;
        CheckContext cc = this.localCheckContext.get();
        if (cc == null) {
            cc = new CheckContext();
            this.localCheckContext.set(cc);
        }
        cc.depthCondSets.add(null);
        cc.accs.add(acc);
        try {
            acc.checkPermission(perm);
            List<SecurityRow.Decision[]> conditionSets = cc.depthCondSets.get(cc.getDepth());
            if (conditionSets == null) {
                return;
            }
            HashMap<Class<? extends Condition>, Dictionary<Object, Object>> conditionDictionaries = new HashMap<Class<? extends Condition>, Dictionary<Object, Object>>();
            for (SecurityRow.Decision[] domainDecisions : conditionSets) {
                boolean grant = false;
                int i = 0;
                while (i < domainDecisions.length) {
                    if (domainDecisions[i] == null) break;
                    if ((domainDecisions[i].decision & 4) == 0) {
                        if ((domainDecisions[i].decision & 8) == 0) {
                            if ((domainDecisions[i].decision & 1) == 0) break;
                            grant = true;
                            break;
                        }
                        int decision = this.getPostponedDecision(domainDecisions[i], conditionDictionaries, cc);
                        if ((decision & 4) == 0) {
                            if ((decision & 1) == 0) break;
                            grant = true;
                            break;
                        }
                    }
                    ++i;
                }
                if (grant) continue;
                throw new SecurityException("Conditions not satisfied");
            }
        }
        finally {
            cc.depthCondSets.remove(cc.getDepth());
            cc.accs.remove(cc.accs.size() - 1);
        }
    }

    private int getPostponedDecision(SecurityRow.Decision decision, Map<Class<? extends Condition>, Dictionary<Object, Object>> conditionDictionaries, CheckContext cc) {
        Condition[] postponed = decision.postponed;
        int i = 0;
        while (i < postponed.length) {
            Dictionary<Object, Object> condContext = conditionDictionaries.get(postponed[i].getClass());
            if (condContext == null) {
                condContext = new Hashtable<Object, Object>();
                conditionDictionaries.put(postponed[i].getClass(), condContext);
            }
            if (cc.CondClassSet == null) {
                cc.CondClassSet = new ArrayList(2);
            }
            if (cc.CondClassSet.contains(postponed[i].getClass())) {
                return 4;
            }
            cc.CondClassSet.add(postponed[i].getClass());
            try {
                boolean mutable = postponed[i].isMutable();
                boolean isSatisfied = postponed[i].isSatisfied(new Condition[]{postponed[i]}, condContext);
                decision.handleImmutable(postponed[i], isSatisfied, mutable);
                if (!isSatisfied) {
                    return 4;
                }
            }
            finally {
                cc.CondClassSet.remove(postponed[i].getClass());
            }
            ++i;
        }
        return decision.decision;
    }

    @Override
    public void checkPermission(Permission perm) {
        this.checkPermission(perm, this.getSecurityContext());
    }

    @Override
    public Object getSecurityContext() {
        return AccessController.getContext();
    }

    static class CheckContext {
        List<List<SecurityRow.Decision[]>> depthCondSets = new ArrayList<List<SecurityRow.Decision[]>>(2);
        List<AccessControlContext> accs = new ArrayList<AccessControlContext>(2);
        List<Class<?>> CondClassSet;

        CheckContext() {
        }

        public int getDepth() {
            return this.depthCondSets.size() - 1;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class CheckPermissionAction
    implements PrivilegedAction<Object> {
        Permission perm;
        Object context;
        EquinoxSecurityManager fsm;

        CheckPermissionAction(EquinoxSecurityManager fsm, Permission perm, Object context) {
            this.fsm = fsm;
            this.perm = perm;
            this.context = context;
        }

        @Override
        public Object run() {
            this.fsm.internalCheckPermission(this.perm, this.context);
            return null;
        }
    }
}

