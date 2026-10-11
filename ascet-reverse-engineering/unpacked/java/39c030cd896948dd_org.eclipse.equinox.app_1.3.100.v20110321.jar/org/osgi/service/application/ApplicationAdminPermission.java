/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Filter
 *  org.osgi.framework.FrameworkUtil
 *  org.osgi.framework.InvalidSyntaxException
 */
package org.osgi.service.application;

import java.security.Permission;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.Vector;
import org.osgi.framework.Filter;
import org.osgi.framework.FrameworkUtil;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.service.application.ApplicationDescriptor;

public class ApplicationAdminPermission
extends Permission {
    private static final long serialVersionUID = 1L;
    public static final String LIFECYCLE_ACTION = "lifecycle";
    public static final String SCHEDULE_ACTION = "schedule";
    public static final String LOCK_ACTION = "lock";
    private ApplicationDescriptor applicationDescriptor;
    private String applicationID;
    private static final Vector ACTIONS = new Vector();
    private Vector actionsVector;
    private final String filter;
    private final String actions;
    private Filter appliedFilter = null;

    static {
        ACTIONS.add(LIFECYCLE_ACTION);
        ACTIONS.add(SCHEDULE_ACTION);
        ACTIONS.add(LOCK_ACTION);
    }

    public ApplicationAdminPermission(String filter, String actions) throws InvalidSyntaxException {
        super(filter == null ? "*" : filter);
        if (filter == null) {
            filter = "*";
        }
        if (actions == null) {
            throw new NullPointerException("Action string cannot be null!");
        }
        this.applicationDescriptor = null;
        this.filter = filter == null ? "*" : filter;
        this.actions = actions;
        if (!filter.equals("*") && !filter.equals("<<SELF>>")) {
            FrameworkUtil.createFilter((String)this.filter);
        }
        this.init();
    }

    public ApplicationAdminPermission(ApplicationDescriptor application, String actions) {
        super(application.getApplicationId());
        if (application == null || actions == null) {
            throw new NullPointerException("ApplicationDescriptor and action string cannot be null!");
        }
        this.filter = application.getApplicationId();
        this.applicationDescriptor = application;
        this.actions = actions;
        this.init();
    }

    public ApplicationAdminPermission setCurrentApplicationId(String applicationId) {
        ApplicationAdminPermission newPerm = null;
        if (this.applicationDescriptor == null) {
            try {
                newPerm = new ApplicationAdminPermission(this.filter, this.actions);
            }
            catch (InvalidSyntaxException e) {
                throw new RuntimeException(e);
            }
        } else {
            newPerm = new ApplicationAdminPermission(this.applicationDescriptor, this.actions);
        }
        newPerm.applicationID = applicationId;
        return newPerm;
    }

    public boolean implies(Permission otherPermission) {
        if (otherPermission == null) {
            return false;
        }
        if (!(otherPermission instanceof ApplicationAdminPermission)) {
            return false;
        }
        ApplicationAdminPermission other = (ApplicationAdminPermission)otherPermission;
        if (!this.filter.equals("*")) {
            if (other.applicationDescriptor == null) {
                return false;
            }
            if (this.filter.equals("<<SELF>>")) {
                if (other.applicationID == null) {
                    return false;
                }
                if (!other.applicationID.equals(other.applicationDescriptor.getApplicationId())) {
                    return false;
                }
            } else {
                Hashtable<String, Object> props = new Hashtable<String, Object>();
                props.put("pid", other.applicationDescriptor.getApplicationId());
                props.put("signer", new SignerWrapper(other.applicationDescriptor));
                Filter flt = this.getFilter();
                if (flt == null) {
                    return false;
                }
                if (!flt.match(props)) {
                    return false;
                }
            }
        }
        return this.actionsVector.containsAll(other.actionsVector);
    }

    public boolean equals(Object with) {
        if (with == null || !(with instanceof ApplicationAdminPermission)) {
            return false;
        }
        ApplicationAdminPermission other = (ApplicationAdminPermission)with;
        if (other.actionsVector.size() != this.actionsVector.size()) {
            return false;
        }
        int i = 0;
        while (i != this.actionsVector.size()) {
            if (!other.actionsVector.contains(this.actionsVector.get(i))) {
                return false;
            }
            ++i;
        }
        return ApplicationAdminPermission.equal(this.filter, other.filter) && ApplicationAdminPermission.equal(this.applicationDescriptor, other.applicationDescriptor) && ApplicationAdminPermission.equal(this.applicationID, other.applicationID);
    }

    private static boolean equal(Object a, Object b) {
        if (a == b) {
            return true;
        }
        return a.equals(b);
    }

    public int hashCode() {
        int hc = 0;
        int i = 0;
        while (i != this.actionsVector.size()) {
            hc ^= ((String)this.actionsVector.get(i)).hashCode();
            ++i;
        }
        hc ^= this.filter == null ? 0 : this.filter.hashCode();
        hc ^= this.applicationDescriptor == null ? 0 : this.applicationDescriptor.hashCode();
        return hc ^= this.applicationID == null ? 0 : this.applicationID.hashCode();
    }

    public String getActions() {
        return this.actions;
    }

    private static Vector actionsVector(String actions) {
        Vector<String> v = new Vector<String>();
        StringTokenizer t = new StringTokenizer(actions.toUpperCase(), ",");
        while (t.hasMoreTokens()) {
            String action = t.nextToken().trim();
            v.add(action.toLowerCase());
        }
        if (v.contains(SCHEDULE_ACTION) && !v.contains(LIFECYCLE_ACTION)) {
            v.add(LIFECYCLE_ACTION);
        }
        return v;
    }

    private void init() {
        this.actionsVector = ApplicationAdminPermission.actionsVector(this.actions);
        if (this.actions.equals("*")) {
            this.actionsVector = ApplicationAdminPermission.actionsVector("lifecycle,schedule,lock");
        } else if (!ACTIONS.containsAll(this.actionsVector)) {
            throw new IllegalArgumentException("Illegal action!");
        }
        this.applicationID = null;
    }

    private Filter getFilter() {
        if (this.appliedFilter == null) {
            try {
                this.appliedFilter = FrameworkUtil.createFilter((String)this.filter);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
        }
        return this.appliedFilter;
    }

    private static class SignerWrapper {
        private String pattern;
        private ApplicationDescriptor appDesc;

        public SignerWrapper(String pattern) {
            this.pattern = pattern;
        }

        SignerWrapper(ApplicationDescriptor appDesc) {
            this.appDesc = appDesc;
        }

        public boolean equals(Object o) {
            if (!(o instanceof SignerWrapper)) {
                return false;
            }
            SignerWrapper other = (SignerWrapper)o;
            ApplicationDescriptor matchAppDesc = this.appDesc != null ? this.appDesc : other.appDesc;
            String matchPattern = this.appDesc != null ? other.pattern : this.pattern;
            return matchAppDesc.matchDNChain(matchPattern);
        }
    }
}

