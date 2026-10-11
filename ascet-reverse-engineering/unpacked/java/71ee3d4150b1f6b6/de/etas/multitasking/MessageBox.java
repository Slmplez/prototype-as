/*
 * Decompiled with CFR 0.152.
 */
package de.etas.multitasking;

import de.etas.multitasking.Message;
import de.etas.multitasking.Semaphore;
import java.util.Hashtable;

public final class MessageBox {
    Hashtable messageList = new Hashtable();
    Semaphore schutz = new Semaphore(true);

    public Object receiveMessage(String name) {
        this.schutz.Wait();
        Message msg = (Message)this.messageList.get(name);
        if (msg == null) {
            msg = new Message();
            this.messageList.put(name, msg);
        }
        this.schutz.Put();
        Object result = msg.Receive();
        this.schutz.Wait();
        this.messageList.remove(name);
        this.schutz.Put();
        return result;
    }

    public boolean sendMessage(String name, Object message) {
        this.schutz.Wait();
        Message msg = (Message)this.messageList.get(name);
        if (msg == null) {
            msg = new Message();
            this.messageList.put(name, msg);
        }
        this.schutz.Put();
        msg.Send(message);
        return true;
    }
}

