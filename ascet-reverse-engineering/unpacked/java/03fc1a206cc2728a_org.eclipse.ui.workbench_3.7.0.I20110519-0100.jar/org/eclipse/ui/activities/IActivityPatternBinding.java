/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import java.util.regex.Pattern;

public interface IActivityPatternBinding
extends Comparable {
    public String getActivityId();

    public Pattern getPattern();

    public String getString();

    public boolean isEqualityPattern();
}

