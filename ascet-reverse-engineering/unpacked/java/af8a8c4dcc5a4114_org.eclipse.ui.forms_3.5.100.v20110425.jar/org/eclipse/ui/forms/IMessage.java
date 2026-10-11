/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.dialogs.IMessageProvider
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.forms;

import org.eclipse.jface.dialogs.IMessageProvider;
import org.eclipse.swt.widgets.Control;

public interface IMessage
extends IMessageProvider {
    public Object getKey();

    public Object getData();

    public Control getControl();

    public String getPrefix();
}

