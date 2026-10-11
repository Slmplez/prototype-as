/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.edit.command;

public interface CommandActionDelegate {
    public boolean canExecute();

    public Object getImage();

    public String getText();

    public String getDescription();

    public String getToolTipText();
}

