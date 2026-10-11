/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IContext;
import org.eclipse.help.IHelpResource;

public interface IContext2
extends IContext {
    public String getTitle();

    public String getStyledText();

    public String getCategory(IHelpResource var1);
}

