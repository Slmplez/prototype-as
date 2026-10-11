/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.eclipse.osgi.framework.console.CommandInterpreter;
import org.eclipse.osgi.framework.console.CommandProvider;
import org.eclipse.osgi.framework.internal.core.ConsoleMsg;
import org.eclipse.osgi.framework.internal.core.FrameworkConsole;
import org.eclipse.osgi.framework.internal.core.Util;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameworkCommandInterpreter
implements CommandInterpreter {
    private static final String WS_DELIM = " \t\n\r\f";
    private StringTokenizer tok;
    private CommandProvider[] commandProviders;
    private FrameworkConsole con;
    private PrintWriter out;
    private String tab = "\t";
    private String newline = "\r\n";
    private boolean firstCommand = true;
    protected static int maxLineCount;
    protected int currentLineCount;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public FrameworkCommandInterpreter(String cmdline, CommandProvider[] commandProviders, FrameworkConsole con) {
        this.tok = new StringTokenizer(cmdline);
        this.commandProviders = commandProviders;
        this.con = con;
        this.out = con.getWriter();
    }

    @Override
    public String nextArgument() {
        if (this.tok == null || !this.tok.hasMoreElements()) {
            return null;
        }
        return this.consumeQuotes(this.tok.nextToken());
    }

    private String consumeQuotes(String arg) {
        if (!arg.startsWith("\"") && !arg.startsWith("'")) {
            return arg;
        }
        String quote = arg.substring(0, 1);
        if (arg.endsWith(quote)) {
            if (arg.length() >= 2) {
                return arg.substring(1, arg.length() - 1);
            }
            return "";
        }
        try {
            arg = new StringBuffer(String.valueOf(arg.substring(1))).append(this.tok.nextToken(quote)).toString();
        }
        catch (NoSuchElementException e) {
            this.printStackTrace(e);
            return "";
        }
        try {
            this.tok.nextToken(WS_DELIM);
        }
        catch (NoSuchElementException noSuchElementException) {}
        return arg;
    }

    @Override
    public Object execute(String cmd) {
        if (!this.firstCommand) {
            return this.innerExecute(cmd);
        }
        this.firstCommand = false;
        this.resetLineCount();
        Object retval = null;
        if (cmd.equalsIgnoreCase("more")) {
            try {
                this._more();
            }
            catch (Exception e) {
                this.printStackTrace(e);
            }
            return retval;
        }
        if (cmd.equalsIgnoreCase("disconnect")) {
            try {
                this._disconnect();
            }
            catch (Exception e) {
                this.printStackTrace(e);
            }
            return retval;
        }
        if (cmd.equalsIgnoreCase("help") && !this.tok.hasMoreElements()) {
            this.displayAllHelp();
            return retval;
        }
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.console.CommandInterpreter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class[] parameterTypes = classArray;
        Object[] parameters = new Object[]{this};
        boolean executed = false;
        int size = this.commandProviders.length;
        if (cmd.equalsIgnoreCase("help") && this.tok.hasMoreElements()) {
            String commandName = this.nextArgument();
            String builtinHelp = this.getHelp(commandName);
            if (builtinHelp != null) {
                this.print(builtinHelp);
                return builtinHelp;
            }
            int i = 0;
            while (i < size) {
                this.tok = new StringTokenizer(commandName);
                boolean isException = false;
                CommandProvider target = this.commandProviders[i];
                Method method = null;
                try {
                    method = target.getClass().getMethod(new StringBuffer("_").append(cmd).toString(), parameterTypes);
                    retval = method.invoke(target, parameters);
                }
                catch (NoSuchMethodException noSuchMethodException) {
                    isException = true;
                }
                catch (InvocationTargetException e) {
                    this.printStackTrace(e.getTargetException());
                    isException = true;
                }
                catch (Exception ee) {
                    this.printStackTrace(ee);
                }
                if (retval != null) {
                    if (retval instanceof Boolean) {
                        executed = executed || (Boolean)retval != false;
                    } else {
                        if (retval instanceof String) {
                            this.print(retval);
                            return retval;
                        }
                        executed = true;
                    }
                } else {
                    executed = executed || !isException;
                }
                ++i;
            }
        } else {
            int i = 0;
            while (!executed && i < size) {
                try {
                    CommandProvider target = this.commandProviders[i];
                    Method method = target.getClass().getMethod(new StringBuffer("_").append(cmd).toString(), parameterTypes);
                    retval = method.invoke(target, parameters);
                    executed = true;
                }
                catch (NoSuchMethodException noSuchMethodException) {
                }
                catch (InvocationTargetException ite) {
                    executed = true;
                    this.printStackTrace(ite.getTargetException());
                }
                catch (Exception ee) {
                    executed = true;
                    this.printStackTrace(ee);
                }
                ++i;
            }
        }
        if (!executed) {
            this.displayAllHelp();
        }
        return retval;
    }

    private void displayAllHelp() {
        int size = this.commandProviders.length;
        int i = 0;
        while (i < size) {
            try {
                CommandProvider commandProvider = this.commandProviders[i];
                this.out.print(commandProvider.getHelp());
                this.out.flush();
            }
            catch (Exception ee) {
                this.printStackTrace(ee);
            }
            ++i;
        }
        this.out.print(this.getHelp(null));
        this.out.flush();
    }

    private Object innerExecute(String cmd) {
        FrameworkCommandInterpreter intcp;
        String command;
        if (cmd != null && cmd.length() > 0 && (command = (intcp = new FrameworkCommandInterpreter(cmd, this.commandProviders, this.con)).nextArgument()) != null) {
            return intcp.execute(command);
        }
        return null;
    }

    private int getMaximumLinesToScroll() {
        return maxLineCount;
    }

    private void setMaximumLinesToScroll(int lines) {
        if (lines < 0) {
            throw new IllegalArgumentException(ConsoleMsg.CONSOLE_LINES_TO_SCROLL_NEGATIVE_ERROR);
        }
        maxLineCount = lines;
    }

    private void resetLineCount() {
        this.currentLineCount = 0;
    }

    private void printline(Object o) {
        this.print(new StringBuffer().append(o).append(this.newline).toString());
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void print(Object o) {
        PrintWriter printWriter = this.out;
        synchronized (printWriter) {
            this.check4More();
            this.out.print(o);
            this.out.flush();
        }
    }

    @Override
    public void println() {
        this.println("");
    }

    @Override
    public void printStackTrace(Throwable t) {
        t.printStackTrace(this.out);
        Method[] methods = t.getClass().getMethods();
        int size = methods.length;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("java.lang.Throwable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> throwable = clazz;
        int i = 0;
        while (i < size) {
            Method method = methods[i];
            if (Modifier.isPublic(method.getModifiers()) && method.getName().startsWith("get") && throwable.isAssignableFrom(method.getReturnType()) && method.getParameterTypes().length == 0) {
                try {
                    Throwable nested = (Throwable)method.invoke(t, null);
                    if (nested != null && nested != t) {
                        this.out.println(ConsoleMsg.CONSOLE_NESTED_EXCEPTION);
                        this.printStackTrace(nested);
                    }
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (InvocationTargetException invocationTargetException) {}
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void println(Object o) {
        if (o == null) {
            return;
        }
        PrintWriter printWriter = this.out;
        synchronized (printWriter) {
            this.check4More();
            this.printline(o);
            ++this.currentLineCount;
            this.currentLineCount += o.toString().length() / 80;
        }
    }

    @Override
    public void printDictionary(Dictionary<?, ?> dic, String title) {
        if (dic == null) {
            return;
        }
        int count = dic.size();
        Object[] keys = new String[count];
        Enumeration<?> keysEnum = dic.keys();
        int i = 0;
        while (keysEnum.hasMoreElements()) {
            keys[i++] = (String)keysEnum.nextElement();
        }
        Util.sortByString(keys);
        if (title != null) {
            this.println(title);
        }
        i = 0;
        while (i < count) {
            this.println(new StringBuffer(" ").append((String)keys[i]).append(" = ").append(dic.get(keys[i])).toString());
            ++i;
        }
        this.println();
    }

    @Override
    public void printBundleResource(Bundle bundle, String resource) {
        block12: {
            URL entry = null;
            entry = bundle.getEntry(resource);
            if (entry != null) {
                try {
                    this.println(resource);
                    InputStream in = entry.openStream();
                    byte[] buffer = new byte[1024];
                    int read = 0;
                    try {
                        while ((read = in.read(buffer)) != -1) {
                            this.print(new String(buffer, 0, read));
                        }
                    }
                    catch (Throwable throwable) {
                        if (in != null) {
                            try {
                                in.close();
                            }
                            catch (IOException iOException) {}
                        }
                        throw throwable;
                    }
                    if (in == null) break block12;
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {
                    }
                }
                catch (Exception exception) {
                    System.err.println(NLS.bind(ConsoleMsg.CONSOLE_ERROR_READING_RESOURCE, resource));
                }
            } else {
                this.println(NLS.bind(ConsoleMsg.CONSOLE_RESOURCE_NOT_IN_BUNDLE, resource, bundle.toString()));
            }
        }
    }

    private void check4More() {
        int max = this.getMaximumLinesToScroll();
        if (max > 0 && this.currentLineCount >= max) {
            this.out.print(ConsoleMsg.CONSOLE_MORE);
            this.out.flush();
            this.con.getInput();
            this.resetLineCount();
        }
    }

    public String getHelp(String commandName) {
        boolean all = commandName == null;
        StringBuffer help = new StringBuffer(256);
        if (all) {
            help.append(ConsoleMsg.CONSOLE_HELP_CONTROLLING_CONSOLE_HEADING);
            help.append(this.newline);
        }
        if (all || "more".equals(commandName)) {
            help.append(this.tab);
            help.append("more - ");
            help.append(ConsoleMsg.CONSOLE_HELP_MORE);
            help.append(this.newline);
        }
        if (all || "disconnect".equals(commandName)) {
            help.append(this.tab);
            help.append("disconnect - ");
            help.append(ConsoleMsg.CONSOLE_HELP_DISCONNECT);
            help.append(this.newline);
        }
        if (all || "help".equals(commandName)) {
            help.append(this.tab);
            help.append("help <commmand> - ");
            help.append(ConsoleMsg.CONSOLE_HELP_HELP_COMMAND_DESCRIPTION);
            help.append(this.newline);
        }
        return help.length() == 0 ? null : help.toString();
    }

    public void _more() throws Exception {
        if (this.confirm(ConsoleMsg.CONSOLE_CONFIRM_MORE, true)) {
            int lines = this.prompt(new StringBuffer(String.valueOf(this.newline)).append(ConsoleMsg.CONSOLE_MORE_ENTER_LINES).toString(), 24);
            this.setMaximumLinesToScroll(lines);
        } else {
            this.setMaximumLinesToScroll(0);
        }
    }

    private void _disconnect() throws Exception {
        if (this.confirm(ConsoleMsg.CONSOLE_CONFIRM_DISCONNECT, true)) {
            this.con.shutdown();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected boolean confirm(String string, boolean defaultAnswer) {
        PrintWriter printWriter = this.out;
        synchronized (printWriter) {
            if (string.length() > 0) {
                this.print(string);
            } else {
                this.print(ConsoleMsg.CONSOLE_CONFIRM);
            }
            this.print(new StringBuffer(" (").append(ConsoleMsg.CONSOLE_CONFIRM_VALUES).toString());
            if (defaultAnswer) {
                this.print(new StringBuffer(String.valueOf(ConsoleMsg.CONSOLE_Y)).append(") ").toString());
            } else {
                this.print(new StringBuffer(String.valueOf(ConsoleMsg.CONSOLE_N)).append(") ").toString());
            }
        }
        String input = this.con.getInput();
        this.resetLineCount();
        if (input.length() == 0) {
            return defaultAnswer;
        }
        return input.toLowerCase().charAt(0) == ConsoleMsg.CONSOLE_Y.charAt(0);
    }

    protected String prompt(String string, String defaultAnswer) {
        if (string.length() > 0) {
            if (defaultAnswer.length() > 0) {
                StringBuffer buf = new StringBuffer(256);
                buf.append(string);
                buf.append(" ");
                buf.append(ConsoleMsg.CONSOLE_PROMPT_DEFAULT);
                buf.append("=");
                buf.append(defaultAnswer);
                buf.append(") ");
                this.print(buf.toString());
            } else {
                this.print(string);
            }
        }
        String input = this.con.getInput();
        this.resetLineCount();
        if (input.length() > 0) {
            return input;
        }
        return defaultAnswer;
    }

    protected int prompt(String string, int defaultAnswer) {
        Integer i = new Integer(defaultAnswer);
        int j = 0;
        while (j < 3) {
            String s = this.prompt(string, i.toString());
            try {
                int answer = Integer.parseInt(s);
                if (answer >= 0) {
                    return answer;
                }
            }
            catch (NumberFormatException numberFormatException) {}
            this.println(ConsoleMsg.CONSOLE_INVALID_INPUT);
            ++j;
        }
        this.println(ConsoleMsg.CONSOLE_TOO_MUCH_INVALID_INPUT);
        return defaultAnswer;
    }
}

