/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.security.Permission;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.internal.permadmin.BundlePermissions;
import org.eclipse.osgi.internal.permadmin.PermissionInfoCollection;
import org.eclipse.osgi.internal.permadmin.SecurityAdmin;
import org.eclipse.osgi.internal.permadmin.SecurityRowSnapShot;
import org.osgi.framework.Bundle;
import org.osgi.service.condpermadmin.Condition;
import org.osgi.service.condpermadmin.ConditionInfo;
import org.osgi.service.condpermadmin.ConditionalPermissionInfo;
import org.osgi.service.permissionadmin.PermissionInfo;

public final class SecurityRow
implements ConditionalPermissionInfo {
    static final Class<?>[] conditionMethodArgs;
    static Condition[] ABSTAIN_LIST;
    static Condition[] SATISFIED_LIST;
    static final Decision DECISION_ABSTAIN;
    static final Decision DECISION_GRANTED;
    static final Decision DECISION_DENIED;
    private final SecurityAdmin securityAdmin;
    private final String name;
    private final ConditionInfo[] conditionInfos;
    private final PermissionInfoCollection permissionInfoCollection;
    private final boolean deny;
    final Map<BundlePermissions, Condition[]> bundleConditions;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class[] classArray = new Class[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.framework.Bundle");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.osgi.service.condpermadmin.ConditionInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        conditionMethodArgs = classArray;
        ABSTAIN_LIST = new Condition[0];
        SATISFIED_LIST = new Condition[0];
        DECISION_ABSTAIN = new Decision(4, null, null, null);
        DECISION_GRANTED = new Decision(1, null, null, null);
        DECISION_DENIED = new Decision(2, null, null, null);
    }

    public SecurityRow(SecurityAdmin securityAdmin, String name, ConditionInfo[] conditionInfos, PermissionInfo[] permissionInfos, String decision) {
        boolean a;
        if (permissionInfos == null || permissionInfos.length == 0) {
            throw new IllegalArgumentException("It is invalid to have empty permissionInfos");
        }
        this.securityAdmin = securityAdmin;
        this.conditionInfos = conditionInfos == null ? new ConditionInfo[]{} : conditionInfos;
        boolean d = "deny".equals(decision = decision.toLowerCase());
        if (!(d | (a = "allow".equals(decision)))) {
            throw new IllegalArgumentException("Invalid decision: " + decision);
        }
        this.deny = d;
        this.name = name;
        this.permissionInfoCollection = new PermissionInfoCollection(permissionInfos);
        this.bundleConditions = conditionInfos == null || conditionInfos.length == 0 ? null : new HashMap<BundlePermissions, Condition[]>();
    }

    static SecurityRowSnapShot createSecurityRowSnapShot(String encoded) {
        return (SecurityRowSnapShot)SecurityRow.createConditionalPermissionInfo(null, encoded);
    }

    static SecurityRow createSecurityRow(SecurityAdmin securityAdmin, String encoded) {
        return (SecurityRow)SecurityRow.createConditionalPermissionInfo(securityAdmin, encoded);
    }

    /*
     * Unable to fully structure code
     */
    private static ConditionalPermissionInfo createConditionalPermissionInfo(SecurityAdmin securityAdmin, String encoded) {
        if ((encoded = encoded.trim()).length() == 0) {
            throw new IllegalArgumentException("Empty encoded string is invalid");
        }
        chars = encoded.toCharArray();
        lastChar = chars[end = encoded.length() - 1];
        if (lastChar != '}' && lastChar != '\"') {
            throw new IllegalArgumentException(encoded);
        }
        encodedName = null;
        if (lastChar == '\"') {
            if (chars.length < 2) {
                throw new IllegalArgumentException(encoded);
            }
            endName = encoded.length() - 1;
            startName = endName - 1;
            while (startName > 0) {
                if (chars[startName] == '\"') {
                    if (--startName > 0 && chars[startName] == '\\') {
                        --startName;
                    } else {
                        ++startName;
                        break;
                    }
                }
                --startName;
            }
            if (chars[startName] != '\"') {
                throw new IllegalArgumentException(encoded);
            }
            encodedName = SecurityRow.unescapeString(encoded.substring(startName + 1, endName));
            end = encoded.lastIndexOf(125, startName);
        }
        if ((start = encoded.indexOf(123)) < 0 || end < start) {
            throw new IllegalArgumentException(encoded);
        }
        decision = encoded.substring(0, start);
        if ((decision = decision.trim()).length() == 0 || !"deny".equalsIgnoreCase(decision) && !"allow".equalsIgnoreCase(decision)) {
            throw new IllegalArgumentException(encoded);
        }
        condList = new ArrayList<ConditionInfo>();
        permList = new ArrayList<PermissionInfo>();
        pos = start + 1;
        ** GOTO lbl60
        {
            ++pos;
            do {
                if (pos < end && chars[pos] != '[' && chars[pos] != '(') continue block1;
                if (pos == end) break block1;
                startPos = pos;
                endChar = chars[startPos] == '[' ? ']' : ')';
                while (pos < end && chars[pos] != endChar) {
                    if (chars[pos] == '\"') {
                        ++pos;
                        while (chars[pos] != '\"') {
                            if (chars[pos] == '\\') {
                                ++pos;
                            }
                            ++pos;
                        }
                    }
                    ++pos;
                }
                endPos = pos;
                token = new String(chars, startPos, endPos - startPos + 1);
                if (endChar == ']') {
                    condList.add(new ConditionInfo(token));
                } else {
                    permList.add(new PermissionInfo(token));
                }
                ++pos;
lbl60:
                // 2 sources

            } while (pos < end);
        }
        if (permList.size() == 0) {
            throw new IllegalArgumentException("No Permission infos: " + encoded);
        }
        conds = condList.toArray(new ConditionInfo[condList.size()]);
        perms = permList.toArray(new PermissionInfo[permList.size()]);
        if (securityAdmin == null) {
            return new SecurityRowSnapShot(encodedName, conds, perms, decision);
        }
        return new SecurityRow(securityAdmin, encodedName, conds, perms, decision);
    }

    static Object cloneArray(Object[] array) {
        if (array == null) {
            return null;
        }
        Object result = Array.newInstance(array.getClass().getComponentType(), array.length);
        System.arraycopy(array, 0, result, 0, array.length);
        return result;
    }

    private static void escapeString(String str, StringBuffer output) {
        int len = str.length();
        int i = 0;
        while (i < len) {
            char c = str.charAt(i);
            switch (c) {
                case '\"': 
                case '\\': {
                    output.append('\\');
                    output.append(c);
                    break;
                }
                case '\r': {
                    output.append("\\r");
                    break;
                }
                case '\n': {
                    output.append("\\n");
                    break;
                }
                default: {
                    output.append(c);
                }
            }
            ++i;
        }
    }

    private static String unescapeString(String str) {
        StringBuffer output = new StringBuffer(str.length());
        int end = str.length();
        int i = 0;
        while (i < end) {
            int c = str.charAt(i);
            if (c == 92 && ++i < end) {
                c = str.charAt(i);
                switch (c) {
                    case 34: 
                    case 92: {
                        break;
                    }
                    case 114: {
                        c = 13;
                        break;
                    }
                    case 110: {
                        c = 10;
                        break;
                    }
                    default: {
                        c = 92;
                        --i;
                    }
                }
            }
            output.append((char)c);
            ++i;
        }
        return output.toString();
    }

    public String getName() {
        return this.name;
    }

    public ConditionInfo[] getConditionInfos() {
        return (ConditionInfo[])SecurityRow.cloneArray(this.conditionInfos);
    }

    ConditionInfo[] internalGetConditionInfos() {
        return this.conditionInfos;
    }

    public String getAccessDecision() {
        return this.deny ? "deny" : "allow";
    }

    public PermissionInfo[] getPermissionInfos() {
        return (PermissionInfo[])SecurityRow.cloneArray(this.permissionInfoCollection.getPermissionInfos());
    }

    PermissionInfo[] internalGetPermissionInfos() {
        return this.permissionInfoCollection.getPermissionInfos();
    }

    public void delete() {
        this.securityAdmin.delete(this, true);
    }

    Condition[] getConditions(Bundle bundle) {
        Condition[] conditions = new Condition[this.conditionInfos.length];
        int i = 0;
        while (i < this.conditionInfos.length) {
            block11: {
                Class<?> clazz;
                try {
                    clazz = Class.forName(this.conditionInfos[i].getType());
                }
                catch (ClassNotFoundException classNotFoundException) {
                    return null;
                }
                Constructor<?> constructor = null;
                Method method = null;
                try {
                    method = clazz.getMethod("getCondition", conditionMethodArgs);
                    if ((method.getModifiers() & 8) == 0) {
                        method = null;
                    }
                }
                catch (NoSuchMethodException noSuchMethodException) {}
                if (method == null) {
                    try {
                        constructor = clazz.getConstructor(conditionMethodArgs);
                    }
                    catch (NoSuchMethodException noSuchMethodException) {
                        conditions[i] = Condition.FALSE;
                        break block11;
                    }
                }
                Object[] args = new Object[]{bundle, this.conditionInfos[i]};
                try {
                    conditions[i] = method != null ? (Condition)method.invoke(null, args) : (Condition)constructor.newInstance(args);
                }
                catch (Throwable throwable) {
                    conditions[i] = Condition.FALSE;
                }
            }
            ++i;
        }
        return conditions;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    Decision evaluate(BundlePermissions bundlePermissions, Permission permission) {
        Condition[] conditions;
        if (this.bundleConditions == null) return this.evaluatePermission(permission);
        if (bundlePermissions == null) {
            return this.evaluatePermission(permission);
        }
        Map<BundlePermissions, Condition[]> map = this.bundleConditions;
        synchronized (map) {
            conditions = this.bundleConditions.get(bundlePermissions);
            if (conditions == null) {
                conditions = this.getConditions(bundlePermissions.getBundle());
                this.bundleConditions.put(bundlePermissions, conditions);
            }
        }
        if (conditions == ABSTAIN_LIST) {
            return DECISION_ABSTAIN;
        }
        if (conditions == SATISFIED_LIST) {
            return this.evaluatePermission(permission);
        }
        boolean empty = true;
        ArrayList<Condition> postponedConditions = null;
        Decision postponedPermCheck = null;
        int i = 0;
        while (i < conditions.length) {
            block21: {
                block23: {
                    Condition condition;
                    block22: {
                        condition = conditions[i];
                        if (condition == null) break block21;
                        if (this.isPostponed(condition)) break block22;
                        boolean mutable = condition.isMutable();
                        if (condition.isSatisfied()) {
                            if (!mutable) {
                                conditions[i] = null;
                            }
                            break block23;
                        } else {
                            if (mutable) return DECISION_ABSTAIN;
                            Map<BundlePermissions, Condition[]> map2 = this.bundleConditions;
                            synchronized (map2) {
                                this.bundleConditions.put(bundlePermissions, ABSTAIN_LIST);
                                return DECISION_ABSTAIN;
                            }
                        }
                    }
                    if (postponedPermCheck == null) {
                        postponedPermCheck = this.evaluatePermission(permission);
                    }
                    if (postponedPermCheck == DECISION_ABSTAIN) {
                        return postponedPermCheck;
                    }
                    if (postponedConditions == null) {
                        postponedConditions = new ArrayList<Condition>(1);
                    }
                    postponedConditions.add(condition);
                }
                empty &= conditions[i] == null;
            }
            ++i;
        }
        if (empty) {
            Map<BundlePermissions, Condition[]> map3 = this.bundleConditions;
            synchronized (map3) {
                this.bundleConditions.put(bundlePermissions, SATISFIED_LIST);
            }
        }
        if (postponedPermCheck == null) return this.evaluatePermission(permission);
        return new Decision(postponedPermCheck.decision | 8, postponedConditions.toArray(new Condition[postponedConditions.size()]), this, bundlePermissions);
    }

    private boolean isPostponed(Condition condition) {
        return condition.isPostponed() && this.securityAdmin.getSupportedSecurityManager() != null;
    }

    private Decision evaluatePermission(Permission permission) {
        return this.permissionInfoCollection.implies(permission) ? (this.deny ? DECISION_DENIED : DECISION_GRANTED) : DECISION_ABSTAIN;
    }

    public String toString() {
        return this.getEncoded();
    }

    public String getEncoded() {
        return SecurityRow.getEncoded(this.name, this.conditionInfos, this.internalGetPermissionInfos(), this.deny);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConditionalPermissionInfo)) {
            return false;
        }
        return this.getEncoded().equals(((ConditionalPermissionInfo)obj).getEncoded());
    }

    public int hashCode() {
        return SecurityRow.getHashCode(this.name, this.internalGetConditionInfos(), this.internalGetPermissionInfos(), this.getAccessDecision());
    }

    static int getHashCode(String name, ConditionInfo[] conds, PermissionInfo[] perms, String decision) {
        int h = 527 + decision.hashCode();
        int i = 0;
        while (i < conds.length) {
            h = 31 * h + conds[i].hashCode();
            ++i;
        }
        i = 0;
        while (i < perms.length) {
            h = 31 * h + perms[i].hashCode();
            ++i;
        }
        if (name != null) {
            h = 31 * h + name.hashCode();
        }
        return h;
    }

    static String getEncoded(String name, ConditionInfo[] conditionInfos, PermissionInfo[] permissionInfos, boolean deny) {
        int i;
        StringBuffer result = new StringBuffer();
        if (deny) {
            result.append("deny");
        } else {
            result.append("allow");
        }
        result.append(" { ");
        if (conditionInfos != null) {
            i = 0;
            while (i < conditionInfos.length) {
                result.append(conditionInfos[i].getEncoded()).append(' ');
                ++i;
            }
        }
        if (permissionInfos != null) {
            i = 0;
            while (i < permissionInfos.length) {
                result.append(permissionInfos[i].getEncoded()).append(' ');
                ++i;
            }
        }
        result.append('}');
        if (name != null) {
            result.append(" \"");
            SecurityRow.escapeString(name, result);
            result.append('\"');
        }
        return result.toString();
    }

    PermissionInfoCollection getPermissionInfoCollection() {
        return this.permissionInfoCollection;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void clearCaches() {
        this.permissionInfoCollection.clearPermissionCache();
        if (this.bundleConditions != null) {
            Map<BundlePermissions, Condition[]> map = this.bundleConditions;
            synchronized (map) {
                this.bundleConditions.clear();
            }
        }
    }

    static class Decision {
        final int decision;
        final Condition[] postponed;
        private final SecurityRow row;
        private final BundlePermissions bundlePermissions;

        Decision(int decision, Condition[] postponed, SecurityRow row, BundlePermissions bundlePermissions) {
            this.decision = decision;
            this.postponed = postponed;
            this.row = row;
            this.bundlePermissions = bundlePermissions;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        void handleImmutable(Condition condition, boolean isSatisfied, boolean mutable) {
            if (mutable || !condition.isPostponed()) {
                return;
            }
            if (isSatisfied) {
                Map<BundlePermissions, Condition[]> map = this.row.bundleConditions;
                synchronized (map) {
                    Condition[] rowConditions = this.row.bundleConditions.get(this.bundlePermissions);
                    boolean isEmpty = true;
                    int i = 0;
                    while (i < rowConditions.length) {
                        if (rowConditions[i] == condition && isSatisfied) {
                            rowConditions[i] = null;
                        }
                        isEmpty &= rowConditions[i] == null;
                        ++i;
                    }
                    if (isEmpty) {
                        this.row.bundleConditions.put(this.bundlePermissions, SATISFIED_LIST);
                    }
                }
            }
            Map<BundlePermissions, Condition[]> map = this.row.bundleConditions;
            synchronized (map) {
                this.row.bundleConditions.put(this.bundlePermissions, ABSTAIN_LIST);
            }
        }
    }
}

