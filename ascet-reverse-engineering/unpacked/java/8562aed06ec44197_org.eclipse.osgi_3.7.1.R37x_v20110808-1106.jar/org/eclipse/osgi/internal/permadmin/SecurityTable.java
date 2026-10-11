/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.permadmin;

import java.security.Permission;
import java.security.PermissionCollection;
import java.util.Enumeration;
import org.eclipse.osgi.internal.permadmin.BundlePermissions;
import org.eclipse.osgi.internal.permadmin.EquinoxSecurityManager;
import org.eclipse.osgi.internal.permadmin.SecurityAdmin;
import org.eclipse.osgi.internal.permadmin.SecurityRow;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SecurityTable
extends PermissionCollection {
    private static final long serialVersionUID = -1800193310096318060L;
    static final int GRANTED = 1;
    static final int DENIED = 2;
    static final int ABSTAIN = 4;
    static final int POSTPONED = 8;
    private final SecurityRow[] rows;
    private final SecurityAdmin securityAdmin;

    public SecurityTable(SecurityAdmin securityAdmin, SecurityRow[] rows) {
        if (rows == null) {
            throw new NullPointerException("rows cannot be null!!");
        }
        this.rows = rows;
        this.securityAdmin = securityAdmin;
    }

    boolean isEmpty() {
        return this.rows.length == 0;
    }

    int evaluate(BundlePermissions bundlePermissions, Permission permission) {
        if (this.isEmpty()) {
            return 4;
        }
        boolean postponed = false;
        SecurityRow.Decision[] results = new SecurityRow.Decision[this.rows.length];
        int immediateDecisionIdx = -1;
        int i = 0;
        while (i < this.rows.length) {
            try {
                results[i] = this.rows[i].evaluate(bundlePermissions, permission);
            }
            catch (Throwable throwable) {
                results[i] = SecurityRow.DECISION_ABSTAIN;
            }
            if ((results[i].decision & 4) == 0) {
                if ((results[i].decision & 8) != 0) {
                    postponed = true;
                } else {
                    if (!postponed) {
                        return results[i].decision;
                    }
                    immediateDecisionIdx = i;
                    break;
                }
            }
            ++i;
        }
        if (postponed) {
            int immediateDecision = immediateDecisionIdx < 0 ? 2 : results[immediateDecisionIdx].decision;
            boolean allSameDecision = true;
            int i2 = immediateDecisionIdx < 0 ? results.length - 1 : immediateDecisionIdx - 1;
            while (i2 >= 0 && allSameDecision) {
                if (results[i2] != null && (results[i2].decision & 8) != 0) {
                    if ((results[i2].decision & immediateDecision) == 0) {
                        allSameDecision = false;
                    } else {
                        results[i2] = SecurityRow.DECISION_ABSTAIN;
                    }
                }
                --i2;
            }
            if (allSameDecision) {
                return immediateDecision;
            }
            EquinoxSecurityManager equinoxManager = this.securityAdmin.getSupportedSecurityManager();
            if (equinoxManager == null) {
                return 4;
            }
            equinoxManager.addConditionsForDomain(results);
        }
        return postponed ? 8 : 4;
    }

    SecurityRow getRow(int i) {
        return this.rows.length <= i || i < 0 ? null : this.rows[i];
    }

    SecurityRow getRow(String name) {
        int i = 0;
        while (i < this.rows.length) {
            if (name.equals(this.rows[i].getName())) {
                return this.rows[i];
            }
            ++i;
        }
        return null;
    }

    SecurityRow[] getRows() {
        return this.rows;
    }

    String[] getEncodedRows() {
        String[] encoded = new String[this.rows.length];
        int i = 0;
        while (i < this.rows.length) {
            encoded[i] = this.rows[i].getEncoded();
            ++i;
        }
        return encoded;
    }

    @Override
    public void add(Permission permission) {
        throw new SecurityException();
    }

    @Override
    public Enumeration<Permission> elements() {
        return BundlePermissions.EMPTY_ENUMERATION;
    }

    @Override
    public boolean implies(Permission permission) {
        return (this.evaluate(null, permission) & 1) != 0;
    }
}

