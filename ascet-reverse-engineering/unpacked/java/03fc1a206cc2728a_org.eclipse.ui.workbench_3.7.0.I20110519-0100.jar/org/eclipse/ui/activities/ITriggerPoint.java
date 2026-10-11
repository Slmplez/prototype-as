/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

public interface ITriggerPoint {
    public static final String HINT_INTERACTIVE = "interactive";
    public static final String HINT_PRE_UI = "pre_UI";

    public String getId();

    public String getStringHint(String var1);

    public boolean getBooleanHint(String var1);
}

