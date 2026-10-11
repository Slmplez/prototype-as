/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.forms;

import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.forms.IMessage;
import org.eclipse.ui.forms.IMessagePrefixProvider;

public interface IMessageManager {
    public void addMessage(Object var1, String var2, Object var3, int var4);

    public void addMessage(Object var1, String var2, Object var3, int var4, Control var5);

    public void removeMessage(Object var1);

    public void removeMessages();

    public void removeMessage(Object var1, Control var2);

    public void removeMessages(Control var1);

    public void removeAllMessages();

    public void update();

    public void setAutoUpdate(boolean var1);

    public boolean isAutoUpdate();

    public void setMessagePrefixProvider(IMessagePrefixProvider var1);

    public IMessagePrefixProvider getMessagePrefixProvider();

    public void setDecorationPosition(int var1);

    public int getDecorationPosition();

    public String createSummary(IMessage[] var1);
}

