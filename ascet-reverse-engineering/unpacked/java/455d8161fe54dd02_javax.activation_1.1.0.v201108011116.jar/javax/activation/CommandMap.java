/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import javax.activation.CommandInfo;
import javax.activation.DataContentHandler;
import javax.activation.DataSource;
import javax.activation.MailcapCommandMap;

public abstract class CommandMap {
    private static CommandMap defaultCommandMap = new MailcapCommandMap();

    public static CommandMap getDefaultCommandMap() {
        return defaultCommandMap;
    }

    public static void setDefaultCommandMap(CommandMap commandMap) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkSetFactory();
        }
        defaultCommandMap = commandMap == null ? new MailcapCommandMap() : commandMap;
    }

    public CommandInfo[] getPreferredCommands(String mimeType, DataSource ds) {
        return this.getPreferredCommands(mimeType);
    }

    public abstract CommandInfo[] getPreferredCommands(String var1);

    public CommandInfo[] getAllCommands(String mimeType, DataSource ds) {
        return this.getAllCommands(mimeType);
    }

    public abstract CommandInfo[] getAllCommands(String var1);

    public CommandInfo getCommand(String mimeType, String cmdName, DataSource ds) {
        return this.getCommand(mimeType, cmdName);
    }

    public abstract CommandInfo getCommand(String var1, String var2);

    public DataContentHandler createDataContentHandler(String mimeType, DataSource ds) {
        return this.createDataContentHandler(mimeType);
    }

    public abstract DataContentHandler createDataContentHandler(String var1);

    public String[] getMimeTypes() {
        return null;
    }
}

