/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.TreeMap;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.zip.ZipException;

public class Utils {
    public static final String MARK_FILE_NAME = "META-INF/eclipse.inf";
    public static final String SIGN_EXCLUDES = "sign.excludes";
    public static final String PACK_EXCLUDES = "pack.excludes";
    public static final String PACK_ARGS_SUFFIX = ".pack.args";
    public static final String DEFAULT_PACK_ARGS = "pack200.default.args";
    public static final String MARK_PROPERTY = "pack200.conditioned";
    public static final String MARK_EXCLUDE = "jarprocessor.exclude";
    public static final String MARK_EXCLUDE_PACK = "jarprocessor.exclude.pack";
    public static final String MARK_EXCLUDE_SIGN = "jarprocessor.exclude.sign";
    public static final String MARK_EXCLUDE_CHILDREN = "jarprocessor.exclude.children";
    public static final String MARK_EXCLUDE_CHILDREN_PACK = "jarprocessor.exclude.children.pack";
    public static final String MARK_EXCLUDE_CHILDREN_SIGN = "jarprocessor.exclude.children.sign";
    public static final String PACK_ARGS = "pack200.args";
    public static final String PACK200_PROPERTY = "org.eclipse.update.jarprocessor.pack200";
    public static final String JRE = "@jre";
    public static final String PATH = "@path";
    public static final String NONE = "@none";
    public static final String PACKED_SUFFIX = ".pack.gz";
    public static final String JAR_SUFFIX = ".jar";
    public static final FileFilter JAR_FILTER = new FileFilter(){

        public boolean accept(File pathname) {
            return pathname.isFile() && pathname.getName().endsWith(Utils.JAR_SUFFIX);
        }
    };
    public static final FileFilter PACK_GZ_FILTER = new FileFilter(){

        public boolean accept(File pathname) {
            return pathname.isFile() && pathname.getName().endsWith("pack.gz");
        }
    };

    public static void close(Object stream) {
        if (stream != null) {
            try {
                if (stream instanceof InputStream) {
                    ((InputStream)stream).close();
                } else if (stream instanceof OutputStream) {
                    ((OutputStream)stream).close();
                } else if (stream instanceof JarFile) {
                    ((JarFile)stream).close();
                }
            }
            catch (IOException iOException) {}
        }
    }

    public static String[] getPack200Commands(String cmd) {
        String[] locations = null;
        String prop = System.getProperty(PACK200_PROPERTY);
        String javaHome = System.getProperty("java.home");
        if (NONE.equals(prop)) {
            return null;
        }
        locations = JRE.equals(prop) ? new String[]{String.valueOf(javaHome) + "/bin/" + cmd} : (PATH.equals(prop) ? new String[]{cmd} : (prop == null ? new String[]{String.valueOf(javaHome) + "/bin/" + cmd, cmd} : new String[]{String.valueOf(prop) + "/" + cmd}));
        return locations;
    }

    public static void transferStreams(InputStream source, OutputStream destination, boolean close) throws IOException {
        source = new BufferedInputStream(source);
        destination = new BufferedOutputStream(destination);
        try {
            byte[] buffer = new byte[8192];
            while (true) {
                int bytesRead = -1;
                bytesRead = source.read(buffer);
                if (bytesRead == -1) {
                    break;
                }
                destination.write(buffer, 0, bytesRead);
            }
        }
        finally {
            if (close) {
                Utils.close(source);
                Utils.close(destination);
            } else {
                destination.flush();
            }
        }
    }

    public static boolean clear(File root) {
        boolean result = Utils.clearChildren(root);
        try {
            if (root.exists()) {
                result &= root.delete();
            }
        }
        catch (Exception exception) {
            result = false;
        }
        return result;
    }

    public static boolean clearChildren(File root) {
        String[] list;
        boolean result = true;
        if (root.isDirectory() && (list = root.list()) != null) {
            int i = 0;
            while (i < list.length) {
                result &= Utils.clear(new File(root, list[i]));
                ++i;
            }
        }
        return result;
    }

    public static Set getPackExclusions(Properties properties) {
        if (properties == null) {
            return Collections.EMPTY_SET;
        }
        String packExcludes = properties.getProperty(PACK_EXCLUDES);
        if (packExcludes != null) {
            String[] excludes = Utils.toStringArray(packExcludes, ",");
            HashSet<String> packExclusions = new HashSet<String>();
            int i = 0;
            while (i < excludes.length) {
                packExclusions.add(excludes[i]);
                ++i;
            }
            return packExclusions;
        }
        return Collections.EMPTY_SET;
    }

    public static Set getSignExclusions(Properties properties) {
        if (properties == null) {
            return Collections.EMPTY_SET;
        }
        String signExcludes = properties.getProperty(SIGN_EXCLUDES);
        if (signExcludes != null) {
            String[] excludes = Utils.toStringArray(signExcludes, ",");
            HashSet<String> signExclusions = new HashSet<String>();
            int i = 0;
            while (i < excludes.length) {
                signExclusions.add(excludes[i]);
                ++i;
            }
            return signExclusions;
        }
        return Collections.EMPTY_SET;
    }

    public static String concat(String[] array) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < array.length) {
            if (i > 0) {
                buffer.append(' ');
            }
            buffer.append(array[i]);
            ++i;
        }
        return buffer.toString();
    }

    public static String[] toStringArray(String input, String separator) {
        StringTokenizer tokenizer = new StringTokenizer(input, separator);
        int count = tokenizer.countTokens();
        String[] result = new String[count];
        int i = 0;
        while (i < count) {
            result[i] = tokenizer.nextToken().trim();
            ++i;
        }
        return result;
    }

    public static Properties getEclipseInf(File jarFile, boolean verbose) {
        if (jarFile == null || !jarFile.exists()) {
            if (verbose) {
                System.out.println("Failed to obtain eclipse.inf due to missing jar file: " + jarFile);
            }
            return null;
        }
        JarFile jar = null;
        try {
            jar = new JarFile(jarFile, false);
        }
        catch (ZipException zipException) {
            return null;
        }
        catch (IOException e) {
            if (verbose) {
                System.out.println("Failed to obtain eclipse.inf due to IOException: " + jarFile);
                e.printStackTrace();
            }
            return null;
        }
        try {
            JarEntry mark = jar.getJarEntry(MARK_FILE_NAME);
            if (mark != null) {
                InputStream in = jar.getInputStream(mark);
                Properties props = new Properties();
                props.load(in);
                in.close();
                Properties properties = props;
                return properties;
            }
            Properties properties = new Properties();
            return properties;
        }
        catch (IOException e) {
            if (verbose) {
                System.out.println("Failed to obtain eclipse.inf due to IOException: " + jarFile);
                e.printStackTrace();
            }
            return null;
        }
        finally {
            Utils.close(jar);
        }
    }

    public static boolean shouldSkipJar(File input, boolean processAll, boolean verbose) {
        Properties inf = Utils.getEclipseInf(input, verbose);
        if (inf == null) {
            return false;
        }
        String exclude = inf.getProperty(MARK_EXCLUDE);
        if (exclude != null && Boolean.valueOf(exclude).booleanValue()) {
            return true;
        }
        if (processAll) {
            return false;
        }
        String marked = inf.getProperty(MARK_PROPERTY);
        return Boolean.valueOf(marked) == false;
    }

    public static void storeProperties(Properties props, OutputStream stream) {
        PrintStream printStream = new PrintStream(stream);
        printStream.print("#Processed using Jarprocessor\n");
        TreeMap<Object, Object> sorted = new TreeMap<Object, Object>(props);
        Iterator iter = sorted.keySet().iterator();
        while (iter.hasNext()) {
            String key = (String)iter.next();
            printStream.print(key);
            printStream.print(" = ");
            printStream.print(sorted.get(key));
            printStream.print("\n");
        }
        printStream.flush();
    }
}

