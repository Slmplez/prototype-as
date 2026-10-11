/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.activation.CommandInfo;
import javax.activation.CommandMap;
import javax.activation.DataContentHandler;
import javax.activation.MimeType;

public class MailcapCommandMap
extends CommandMap {
    private final Map mimeTypes;
    private final Map preferredCommands;
    private final Map allCommands;
    private final Map nativeCommands;
    private final Map fallbackCommands;
    private URL url;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public MailcapCommandMap() {
        File file;
        InputStream is;
        ClassLoader contextLoader;
        block26: {
            this.mimeTypes = new HashMap();
            this.preferredCommands = new HashMap();
            this.allCommands = new HashMap();
            this.nativeCommands = new HashMap();
            this.fallbackCommands = new HashMap();
            contextLoader = Thread.currentThread().getContextClassLoader();
            try {
                InputStream is2 = MailcapCommandMap.class.getResourceAsStream("/META-INF/mailcap.default");
                if (is2 == null) break block26;
                try {
                    this.parseMailcap(is2);
                }
                finally {
                    is2.close();
                }
            }
            catch (IOException e) {
                // empty catch block
            }
        }
        try {
            Enumeration<URL> e = contextLoader.getResources("META-INF/mailcap");
            while (e.hasMoreElements()) {
                this.url = e.nextElement();
                try {
                    is = this.url.openStream();
                    try {
                        this.parseMailcap(is);
                    }
                    finally {
                        is.close();
                    }
                }
                catch (IOException e1) {}
            }
        }
        catch (SecurityException e) {
        }
        catch (IOException e) {
            // empty catch block
        }
        try {
            file = new File(System.getProperty("java.home"), "lib/mailcap");
            is = new FileInputStream(file);
            try {
                this.parseMailcap(is);
            }
            finally {
                is.close();
            }
        }
        catch (SecurityException e) {
        }
        catch (IOException e) {
            // empty catch block
        }
        try {
            file = new File(System.getProperty("user.home"), ".mailcap");
            is = new FileInputStream(file);
            try {
                this.parseMailcap(is);
            }
            finally {
                is.close();
            }
        }
        catch (SecurityException e) {
        }
        catch (IOException iOException) {
            // empty catch block
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public MailcapCommandMap(String fileName) throws IOException {
        this();
        FileReader reader = new FileReader(fileName);
        try {
            this.parseMailcap(reader);
        }
        finally {
            reader.close();
        }
    }

    public MailcapCommandMap(InputStream is) {
        this();
        this.parseMailcap(is);
    }

    private void parseMailcap(InputStream is) {
        try {
            this.parseMailcap(new InputStreamReader(is));
        }
        catch (IOException iOException) {
            // empty catch block
        }
    }

    void parseMailcap(Reader reader) throws IOException {
        String line;
        BufferedReader br = new BufferedReader(reader);
        while ((line = br.readLine()) != null) {
            this.addMailcap(line);
        }
    }

    public synchronized void addMailcap(String mail_cap) {
        int index = 0;
        if ((index = this.skipSpace(mail_cap, index)) == mail_cap.length() || mail_cap.charAt(index) == '#') {
            return;
        }
        int start = index;
        if (start == (index = this.getToken(mail_cap, index))) {
            return;
        }
        String mimeType = mail_cap.substring(start, index);
        if ((index = this.skipSpace(mail_cap, index)) == mail_cap.length() || mail_cap.charAt(index) == '#') {
            return;
        }
        if (mail_cap.charAt(index) == '/') {
            ++index;
            start = index = this.skipSpace(mail_cap, index);
            index = this.getToken(mail_cap, index);
            mimeType = mimeType + '/' + mail_cap.substring(start, index);
        } else {
            mimeType = mimeType + "/*";
        }
        mimeType = mimeType.toLowerCase();
        index = this.skipSpace(mail_cap, index);
        if (index == mail_cap.length() || mail_cap.charAt(index) != ';') {
            return;
        }
        if ((index = this.skipSpace(mail_cap, index + 1)) == mail_cap.length() || mail_cap.charAt(index) != ';') {
            ArrayList<String> nativeCommandList = (ArrayList<String>)this.nativeCommands.get(mimeType);
            if (nativeCommandList == null) {
                nativeCommandList = new ArrayList<String>();
                this.nativeCommands.put(mimeType, nativeCommandList);
            }
            nativeCommandList.add(mail_cap);
            index = this.getMText(mail_cap, index);
        }
        ArrayList<CommandInfo> commandList = new ArrayList<CommandInfo>();
        boolean fallback = false;
        boolean fieldNumber = false;
        while (index < mail_cap.length() && mail_cap.charAt(index) == ';') {
            start = index = this.skipSpace(mail_cap, index + 1);
            index = this.getToken(mail_cap, index);
            String fieldName = mail_cap.substring(start, index).toLowerCase();
            if ((index = this.skipSpace(mail_cap, index)) >= mail_cap.length() || mail_cap.charAt(index) != '=') continue;
            start = index = this.skipSpace(mail_cap, index + 1);
            index = this.getMText(mail_cap, index);
            String value = mail_cap.substring(start, index);
            index = this.skipSpace(mail_cap, index);
            if (!fieldName.startsWith("x-java-") || fieldName.length() <= 7) continue;
            String command = fieldName.substring(7);
            value = value.trim();
            if (command.equals("fallback-entry")) {
                if (!value.equals("true")) continue;
                fallback = true;
                continue;
            }
            CommandInfo info = new CommandInfo(command, value);
            commandList.add(info);
        }
        this.addCommands(mimeType, commandList, fallback);
    }

    private void addCommands(String mimeType, List commands, boolean fallback) {
        this.mimeTypes.put(mimeType, mimeType);
        Map target = fallback ? this.fallbackCommands : this.preferredCommands;
        Iterator i = commands.iterator();
        while (i.hasNext()) {
            CommandInfo info = (CommandInfo)i.next();
            this.addCommand(target, mimeType, info);
            if (fallback) continue;
            ArrayList<CommandInfo> cmdList = (ArrayList<CommandInfo>)this.allCommands.get(mimeType);
            if (cmdList == null) {
                cmdList = new ArrayList<CommandInfo>();
                this.allCommands.put(mimeType, cmdList);
            }
            cmdList.add(info);
        }
    }

    private void addCommand(Map commandList, String mimeType, CommandInfo command) {
        HashMap<String, CommandInfo> commands = (HashMap<String, CommandInfo>)commandList.get(mimeType);
        if (commands == null) {
            commands = new HashMap<String, CommandInfo>();
            commandList.put(mimeType, commands);
        }
        commands.put(command.getCommandName(), command);
    }

    private int skipSpace(String s, int index) {
        while (index < s.length() && Character.isWhitespace(s.charAt(index))) {
            ++index;
        }
        return index;
    }

    private int getToken(String s, int index) {
        while (index < s.length() && s.charAt(index) != '#' && !MimeType.isSpecial(s.charAt(index))) {
            ++index;
        }
        return index;
    }

    private int getMText(String s, int index) {
        while (index < s.length()) {
            char c = s.charAt(index);
            if (c == '#' || c == ';' || Character.isISOControl(c)) {
                return index;
            }
            if (c == '\\' && ++index == s.length()) {
                return index;
            }
            ++index;
        }
        return index;
    }

    public synchronized CommandInfo[] getPreferredCommands(String mimeType) {
        Map fallbackCommands;
        Map commands = (Map)this.preferredCommands.get(mimeType = mimeType.toLowerCase());
        if (commands == null) {
            commands = (Map)this.preferredCommands.get(this.getWildcardMimeType(mimeType));
        }
        if ((fallbackCommands = this.getFallbackCommands(mimeType)) != null) {
            commands = commands == null ? fallbackCommands : this.mergeCommandMaps(commands, fallbackCommands);
        }
        if (commands == null) {
            return new CommandInfo[0];
        }
        return commands.values().toArray(new CommandInfo[commands.size()]);
    }

    private Map getFallbackCommands(String mimeType) {
        Map commands = (Map)this.fallbackCommands.get(mimeType);
        Map wildcardCommands = (Map)this.fallbackCommands.get(this.getWildcardMimeType(mimeType));
        if (wildcardCommands == null) {
            return commands;
        }
        return this.mergeCommandMaps(commands, wildcardCommands);
    }

    private Map mergeCommandMaps(Map main, Map fallback) {
        HashMap result = new HashMap(fallback);
        result.putAll(main);
        return result;
    }

    public synchronized CommandInfo[] getAllCommands(String mimeType) {
        int i;
        Map fallbackCommands;
        List wildCommands;
        List exactCommands = (List)this.allCommands.get(mimeType = mimeType.toLowerCase());
        if (exactCommands == null) {
            exactCommands = Collections.EMPTY_LIST;
        }
        if ((wildCommands = (List)this.allCommands.get(this.getWildcardMimeType(mimeType))) == null) {
            wildCommands = Collections.EMPTY_LIST;
        }
        if ((fallbackCommands = this.getFallbackCommands(mimeType)) == null) {
            fallbackCommands = Collections.EMPTY_MAP;
        }
        CommandInfo[] result = new CommandInfo[exactCommands.size() + wildCommands.size() + fallbackCommands.size()];
        int j = 0;
        for (i = 0; i < exactCommands.size(); ++i) {
            result[j++] = (CommandInfo)exactCommands.get(i);
        }
        for (i = 0; i < wildCommands.size(); ++i) {
            result[j++] = (CommandInfo)wildCommands.get(i);
        }
        Iterator i2 = fallbackCommands.keySet().iterator();
        while (i2.hasNext()) {
            result[j++] = (CommandInfo)fallbackCommands.get((String)i2.next());
        }
        return result;
    }

    public synchronized CommandInfo getCommand(String mimeType, String cmdName) {
        Map commands;
        int i = (mimeType = mimeType.toLowerCase()).indexOf(59);
        if (i != -1) {
            mimeType = mimeType.substring(0, i).trim();
        }
        if ((commands = (Map)this.preferredCommands.get(mimeType)) == null && (commands = (Map)this.preferredCommands.get(this.getWildcardMimeType(mimeType))) == null) {
            commands = (Map)this.fallbackCommands.get(mimeType);
            if (commands == null) {
                commands = (Map)this.fallbackCommands.get(this.getWildcardMimeType(mimeType));
            }
            if (commands == null) {
                return null;
            }
        }
        return (CommandInfo)commands.get(cmdName.toLowerCase());
    }

    private String getWildcardMimeType(String mimeType) {
        int i = mimeType.indexOf(47);
        if (i == -1) {
            return mimeType + "/*";
        }
        return mimeType.substring(0, i + 1) + "*";
    }

    public synchronized DataContentHandler createDataContentHandler(String mimeType) {
        CommandInfo info = this.getCommand(mimeType, "content-handler");
        if (info == null) {
            return null;
        }
        ClassLoader cl = Thread.currentThread().getContextClassLoader();
        if (cl == null) {
            cl = this.getClass().getClassLoader();
        }
        try {
            return (DataContentHandler)cl.loadClass(info.getCommandClass()).newInstance();
        }
        catch (ClassNotFoundException e) {
            return null;
        }
        catch (IllegalAccessException e) {
            return null;
        }
        catch (InstantiationException e) {
            return null;
        }
    }

    public synchronized String[] getMimeTypes() {
        ArrayList types = new ArrayList(this.mimeTypes.values());
        return types.toArray(new String[types.size()]);
    }

    public synchronized String[] getNativeCommands(String mimeType) {
        ArrayList commands = (ArrayList)this.nativeCommands.get(mimeType.toLowerCase());
        if (commands == null) {
            return new String[0];
        }
        return commands.toArray(new String[commands.size()]);
    }
}

