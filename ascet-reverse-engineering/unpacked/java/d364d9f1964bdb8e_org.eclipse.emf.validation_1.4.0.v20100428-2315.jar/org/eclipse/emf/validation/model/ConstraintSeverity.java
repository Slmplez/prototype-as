/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.emf.validation.model;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ConstraintSeverity implements Enumerator
{
    INFO("INFO", ValidationMessages.severity_info, 1),
    WARNING("WARNING", ValidationMessages.severity_warning, 2),
    ERROR("ERROR", ValidationMessages.severity_error, 4),
    CANCEL("CANCEL", ValidationMessages.severity_cancel, 8),
    NULL("none", ValidationMessages.severity_null, 0);

    private static final long serialVersionUID = -5310833954198275258L;
    private static final List<ConstraintSeverity> instances;
    private final String name;
    private final String localizedName;
    private final int istatusSeverity;

    static {
        instances = Collections.unmodifiableList(Arrays.asList(INFO, WARNING, ERROR, CANCEL, NULL));
    }

    private ConstraintSeverity(String name, String localizedName, int istatusSeverity) {
        this.name = name;
        this.istatusSeverity = istatusSeverity;
        this.localizedName = localizedName;
    }

    public static ConstraintSeverity getInstance(String name) {
        ConstraintSeverity result = NULL;
        for (ConstraintSeverity next : instances) {
            if (!next.getName().equalsIgnoreCase(name)) continue;
            result = next;
            break;
        }
        return result;
    }

    public static final List<ConstraintSeverity> getAllInstances() {
        return instances;
    }

    public final String getName() {
        return this.name;
    }

    public final String getLocalizedName() {
        return this.localizedName;
    }

    public boolean isNull() {
        return this == NULL;
    }

    public int toIStatusSeverity() {
        return this.istatusSeverity;
    }

    public String toString() {
        return this.getName();
    }

    public int getValue() {
        return this.ordinal();
    }

    public String getLiteral() {
        return this.getName();
    }
}

