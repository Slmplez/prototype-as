/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.ant.internal.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.osgi.framework.BundleContext;

public class AntCoreUtil {
    private static BundleContext fgContext = null;

    public static void setBundleContext(BundleContext context) {
        fgContext = context;
    }

    public static BundleContext getBundleContext() {
        return fgContext;
    }

    public static ArrayList getArrayList(String[] args) {
        if (args == null) {
            return null;
        }
        ArrayList<String> result = new ArrayList<String>(args.length);
        int i = 0;
        while (i < args.length) {
            result.add(args[i]);
            ++i;
        }
        return result;
    }

    public static String getArgument(List commands, String param) {
        if (commands == null) {
            return null;
        }
        int index = commands.indexOf(param);
        if (index == -1) {
            return null;
        }
        commands.remove(index);
        if (index == commands.size()) {
            return "";
        }
        String command = (String)commands.get(index);
        if (command.startsWith("-")) {
            return "";
        }
        commands.remove(index);
        return command;
    }

    public static void processMinusDProperties(List commands, Map userProperties) {
        Iterator iter = commands.iterator();
        while (iter.hasNext()) {
            String arg = (String)iter.next();
            if (!arg.startsWith("-D")) continue;
            String name = arg.substring(2, arg.length());
            String value = null;
            int posEq = name.indexOf("=");
            if (posEq == 0) {
                value = name.substring(1);
                name = "";
            } else if (posEq > 0 && posEq != name.length() - 1) {
                value = name.substring(posEq + 1).trim();
                name = name.substring(0, posEq);
            }
            if (value == null) continue;
            userProperties.put(name, value);
            iter.remove();
        }
    }

    public static File getFileRelativeToBaseDir(String fileName, String base, String buildFileLocation) {
        Path path = new Path(fileName);
        if (!path.isAbsolute()) {
            if (base != null) {
                File baseDir = new File(base);
                path = new Path(baseDir.getAbsolutePath());
            } else {
                path = new Path(buildFileLocation);
                path = path.removeLastSegments(1);
            }
            path = path.addTrailingSeparator();
            path = path.append(fileName);
        }
        return path.toFile();
    }

    public static List loadPropertyFiles(List fileNames, String base, String buildFileLocation) throws IOException {
        ArrayList<Properties> allProperties = new ArrayList<Properties>(fileNames.size());
        int i = 0;
        while (i < fileNames.size()) {
            String filename = (String)fileNames.get(i);
            File file = AntCoreUtil.getFileRelativeToBaseDir(filename, base, buildFileLocation);
            Properties props = new Properties();
            FileInputStream fis = null;
            try {
                fis = new FileInputStream(file);
                props.load(fis);
            }
            catch (Throwable throwable) {
                if (fis != null) {
                    try {
                        fis.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (fis != null) {
                try {
                    fis.close();
                }
                catch (IOException iOException) {}
            }
            Enumeration<?> propertyNames = props.propertyNames();
            while (propertyNames.hasMoreElements()) {
                String name = (String)propertyNames.nextElement();
                String value = props.getProperty(name);
                props.remove(name);
                IStringVariableManager stringVariableManager = VariablesPlugin.getDefault().getStringVariableManager();
                try {
                    name = stringVariableManager.performStringSubstitution(name);
                    value = stringVariableManager.performStringSubstitution(value);
                }
                catch (CoreException coreException) {}
                props.setProperty(name, value);
            }
            allProperties.add(props);
            ++i;
        }
        return allProperties;
    }
}

