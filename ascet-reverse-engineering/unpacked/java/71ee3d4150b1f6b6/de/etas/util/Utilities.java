/*
 * Decompiled with CFR 0.152.
 */
package de.etas.util;

import de.etas.cebra.Cebra;
import de.etas.types.Set;
import java.io.File;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.Vector;

public class Utilities {
    private static String origPath = System.getProperty("java.class.path");
    private static String notInName = " \n\t\r^\u00b0!\"\u00a7$%&/()=?`\u00b4\\}][{<>|;,:.-#'+*~";
    private static Hashtable allPackages = null;

    public static final synchronized void addToClassPath(String newPath) {
        String path = System.getProperty("java.class.path");
        Properties prop = System.getProperties();
        prop.put("java.class.path", Utilities.trimPath(String.valueOf(path) + Cebra.PS + newPath, true));
        System.setProperties(prop);
    }

    public static final Hashtable allPackages() {
        if (allPackages == null) {
            Utilities.reloadPackages();
        }
        return allPackages;
    }

    public static String catPath(Set set) {
        StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < set.size()) {
            sb.append((String)set.elementAt(i));
            sb.append(Cebra.PS);
            ++i;
        }
        return sb.toString();
    }

    public static final String changeToFilePath(String javaPath) {
        return javaPath.replace('.', Cebra.FS.charAt(0));
    }

    public static final String changeToJavaPath(String filePath) {
        String ergeb = filePath.replace(Cebra.FS.charAt(0), '.');
        if (ergeb.startsWith(".")) {
            ergeb = ergeb.substring(1);
        }
        return ergeb;
    }

    public static final String checkHostName(String name) {
        try {
            InetAddress address;
            try {
                address = InetAddress.getLocalHost();
            }
            catch (UnknownHostException unknownHostException) {
                address = InetAddress.getByName("127.0.0.1");
            }
            if (name.toLowerCase().equals(address.getHostName().toLowerCase()) || name.toLowerCase().equals(address.getHostAddress().toLowerCase()) || name.toLowerCase().equals("127.0.0.1")) {
                return address.getHostName();
            }
            return InetAddress.getByName(name).getHostName().toLowerCase();
        }
        catch (Exception exception) {
            return null;
        }
    }

    public static final boolean checkNameString(String name) {
        if (name == null) {
            return false;
        }
        StringTokenizer st = new StringTokenizer(name, notInName, true);
        return st.countTokens() == 1;
    }

    public static final synchronized String[] classPath() {
        return Utilities.sepPath(System.getProperty("java.class.path"), true);
    }

    public static boolean contains(String[] strArray, String str) {
        int i = 0;
        while (i < strArray.length) {
            if (strArray[i].equals(str)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static int distClass(Class c1, Class c2) {
        if (c1 == c2) {
            return 0;
        }
        if (c1 == null || c2 == null) {
            return -1;
        }
        if (c2.isInterface() && !c1.isInterface()) {
            int outerloop = 0;
            Class clazzClazz = c1;
            while (clazzClazz != null) {
                Class<?>[] ifs = clazzClazz.getInterfaces();
                int i = 0;
                while (i < ifs.length) {
                    Class<?> clazz = ifs[i];
                    int innerloop = Utilities.distClass(clazz, c2);
                    if (innerloop >= 0) {
                        return innerloop + outerloop;
                    }
                    ++i;
                }
                ++outerloop;
                clazzClazz = clazzClazz.getSuperclass();
            }
        } else {
            int ergeb = 0;
            Class clazz = c1;
            while (clazz != null) {
                if (clazz == c2) {
                    return ergeb;
                }
                ++ergeb;
                clazz = clazz.getSuperclass();
            }
        }
        return -1;
    }

    public static final synchronized String getClassPath() {
        return System.getProperty("java.class.path");
    }

    public static String[] getStrings(String str, int token) {
        int pos_act;
        Vector<Integer> position = new Vector<Integer>();
        int pos_before = 0;
        position.addElement(new Integer(0));
        do {
            if ((pos_act = str.indexOf(token, pos_before)) <= 0) continue;
            pos_before = pos_act + 1;
            position.addElement(new Integer(pos_act));
        } while (pos_act > 0);
        position.addElement(new Integer(str.length()));
        String[] strArray = new String[position.size() - 1];
        pos_before = (Integer)position.elementAt(0);
        int i = 1;
        while (i < position.size()) {
            pos_act = (Integer)position.elementAt(i);
            String subStr = str.substring(pos_before, pos_act);
            pos_before = pos_act + 1;
            strArray[i - 1] = subStr;
            ++i;
        }
        return strArray;
    }

    public static final boolean isLocalHost(String hostName) {
        try {
            InetAddress host = InetAddress.getByName(hostName);
            InetAddress loc = InetAddress.getLocalHost();
            return loc.equals(host);
        }
        catch (Exception exception) {
            return true;
        }
    }

    public static final void reloadPackages() {
        allPackages = new Hashtable(7);
        String[] path = Utilities.classPath();
        int i = 0;
        while (i < path.length) {
            Utilities.searchForClasses(path[i], null);
            ++i;
        }
    }

    public static final synchronized void removeFromClassPath(String oldPath) {
        String remPath = oldPath;
        if (remPath.endsWith(Cebra.FS)) {
            remPath = remPath.substring(0, remPath.length() - 1);
        }
        Properties prop = System.getProperties();
        String[] np = Utilities.classPath();
        StringBuffer path = new StringBuffer();
        int i = 0;
        while (i < np.length) {
            if (!remPath.equals(np[i])) {
                path.append(np[i]);
                path.append(Cebra.PS);
            }
            ++i;
        }
        prop.put("java.class.path", path.toString());
        System.setProperties(prop);
    }

    private static void searchForClasses(String path, String packagePath) {
        File fp = new File(path);
        if (fp == null) {
            return;
        }
        if (!fp.exists()) {
            return;
        }
        if (fp.isDirectory()) {
            String[] files = fp.list();
            int i = 0;
            while (i < files.length) {
                File testFile = new File(String.valueOf(path) + Cebra.FS + files[i]);
                if (testFile.isDirectory()) {
                    if (packagePath == null) {
                        Utilities.searchForClasses(String.valueOf(path) + Cebra.FS + files[i], files[i]);
                    } else {
                        Utilities.searchForClasses(String.valueOf(path) + Cebra.FS + files[i], String.valueOf(packagePath) + "." + files[i]);
                    }
                } else {
                    Utilities.searchForClasses(String.valueOf(path) + Cebra.FS + files[i], packagePath);
                }
                ++i;
            }
        } else {
            String fileName = fp.getName();
            int pos = fileName.toLowerCase().indexOf(".class");
            if (pos > 0) {
                fileName = fileName.substring(0, pos);
                try {
                    Class<?> clazz = Class.forName(String.valueOf(packagePath) + "." + fileName);
                    Hashtable table = (Hashtable)allPackages.get(packagePath);
                    if (table == null) {
                        table = new Hashtable(7);
                        allPackages.put(packagePath, table);
                    }
                    table.put(fileName, clazz);
                }
                catch (Throwable throwable) {}
            }
        }
    }

    public static final String[] sepPath(String path, boolean toLowerCase) {
        StringTokenizer tok = new StringTokenizer(path, Cebra.PS);
        int n = tok.countTokens();
        String[] ergeb = new String[n];
        int i = 0;
        while (i < n) {
            String p = tok.nextToken();
            if (p.endsWith(Cebra.FS)) {
                p = p.substring(0, p.length() - 1);
            }
            ergeb[i] = toLowerCase ? p.toLowerCase() : p;
            ++i;
        }
        return ergeb;
    }

    public static final synchronized void setClassPath(String newPath) {
        Properties prop = System.getProperties();
        prop.put("java.class.path", newPath);
        System.setProperties(prop);
    }

    public static final String[] sortStrings(Enumeration enumeration) {
        Vector<String> sort = new Vector<String>();
        while (enumeration.hasMoreElements()) {
            String newSort = (String)enumeration.nextElement();
            boolean weiter = true;
            int i = 0;
            while (weiter) {
                if (i == sort.size()) {
                    weiter = false;
                    sort.addElement(newSort);
                    continue;
                }
                if (newSort.compareTo((String)sort.elementAt(i)) < 0) {
                    sort.insertElementAt(newSort, i);
                    weiter = false;
                    continue;
                }
                ++i;
            }
        }
        String[] ergeb = new String[sort.size()];
        int i = 0;
        while (i < ergeb.length) {
            ergeb[i] = (String)sort.elementAt(i);
            ++i;
        }
        return ergeb;
    }

    public static final String trimPath(String path, boolean toLowerCase) {
        String[] buf = Utilities.sepPath(path, toLowerCase);
        Set set = new Set();
        int i = 0;
        while (i < buf.length) {
            set.add(buf[i]);
            ++i;
        }
        return Utilities.catPath(set);
    }

    public static final String trimString(String name) {
        if (name == null) {
            return "";
        }
        StringTokenizer st = new StringTokenizer(name, notInName);
        StringBuffer result = new StringBuffer();
        int c = st.countTokens();
        int i = 0;
        while (i < c) {
            result.append(st.nextToken());
            ++i;
        }
        return result.toString();
    }

    public static final String userPath() {
        Set set = new Set();
        String[] buf = Utilities.classPath();
        int i = 0;
        while (i < buf.length) {
            set.add(buf[i]);
            ++i;
        }
        buf = Utilities.sepPath(origPath, true);
        i = 0;
        while (i < buf.length) {
            set.removeElement(buf[i]);
            ++i;
        }
        return Utilities.catPath(set);
    }

    public static final synchronized String validatePath(String path) {
        boolean found = false;
        int i = 0;
        String[] javaPath = Utilities.classPath();
        String sPath = path.toLowerCase();
        if (sPath.endsWith(Cebra.FS)) {
            sPath = sPath.substring(0, sPath.length() - 1);
        }
        int n = javaPath.length;
        while (!found && i < n) {
            found = sPath.startsWith(javaPath[i]);
            ++i;
        }
        if (!found) {
            return null;
        }
        return javaPath[i - 1];
    }
}

