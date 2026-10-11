/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.emf.validation.service;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public enum ConstraintChangeEventType implements Enumerator
{
    REGISTERED("Registered"),
    UNREGISTERED("Unregistered"),
    ENABLED("Enabled"),
    DISABLED("Disabled"),
    ADDED_CATEGORY("Added Category"),
    REMOVED_CATEGORY("Removed Category");

    private static final long serialVersionUID = 1L;
    private static final ConstraintChangeEventType[] VALUES;
    private final String name;

    static {
        VALUES = new ConstraintChangeEventType[]{REGISTERED, UNREGISTERED, ENABLED, DISABLED, ADDED_CATEGORY, REMOVED_CATEGORY};
    }

    private ConstraintChangeEventType(String name) {
        this.name = name;
    }

    protected List<ConstraintChangeEventType> getValues() {
        return Collections.unmodifiableList(Arrays.asList(VALUES));
    }

    public int getValue() {
        return this.ordinal();
    }

    public String getLiteral() {
        return this.getName();
    }

    public String getName() {
        return this.name;
    }
}

