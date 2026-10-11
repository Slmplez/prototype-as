/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.jdi.internal.spy;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.jdi.internal.spy.JdwpCommandPacket;
import org.eclipse.jdi.internal.spy.JdwpReplyPacket;

public class JdwpConversation {
    private int fId;
    private JdwpCommandPacket fCommand;
    private JdwpReplyPacket fReply;

    JdwpConversation(int id) {
        this.fId = id;
    }

    void setCommand(JdwpCommandPacket command) {
        if (this.fCommand != null) {
            throw new IllegalArgumentException(MessageFormat.format((String)"Attempt to overwrite command with {0}", (Object[])new String[]{command.toString()}));
        }
        this.fCommand = command;
    }

    void setReply(JdwpReplyPacket reply) {
        if (this.fReply != null) {
            throw new IllegalArgumentException(MessageFormat.format((String)"Attempt to overwrite reply with {0}", (Object[])new String[]{reply.toString()}));
        }
        this.fReply = reply;
    }

    public JdwpCommandPacket getCommand() {
        return this.fCommand;
    }

    public JdwpReplyPacket getReply() {
        return this.fReply;
    }

    public int getId() {
        return this.fId;
    }
}

