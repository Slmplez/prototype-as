/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.beans.Beans;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInputStream;
import javax.activation.CommandObject;
import javax.activation.DataHandler;

public class CommandInfo {
    private final String commandName;
    private final String commandClass;

    public CommandInfo(String commandName, String commandClass) {
        this.commandName = commandName;
        this.commandClass = commandClass;
    }

    public String getCommandName() {
        return this.commandName;
    }

    public String getCommandClass() {
        return this.commandClass;
    }

    public Object getCommandObject(DataHandler dh, ClassLoader loader) throws IOException, ClassNotFoundException {
        Object bean = Beans.instantiate(loader, this.commandClass);
        if (bean instanceof CommandObject) {
            ((CommandObject)bean).setCommandContext(this.commandName, dh);
        } else if (bean instanceof Externalizable && dh != null) {
            ((Externalizable)bean).readExternal(new ObjectInputStream(dh.getInputStream()));
        }
        return bean;
    }
}

