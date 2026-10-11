/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.batch.FileSystem
 *  org.eclipse.jdt.internal.compiler.batch.FileSystem$Classpath
 *  org.eclipse.jdt.internal.compiler.batch.Main
 *  org.eclipse.jdt.internal.compiler.batch.Main$ResourceBundleFactory
 *  org.eclipse.jdt.internal.compiler.env.AccessRule
 *  org.eclipse.jdt.internal.compiler.env.AccessRuleSet
 */
package org.eclipse.jdt.internal.compiler.tool;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipException;
import javax.tools.FileObject;
import javax.tools.JavaFileManager;
import javax.tools.JavaFileObject;
import javax.tools.StandardJavaFileManager;
import javax.tools.StandardLocation;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.eclipse.jdt.internal.compiler.env.AccessRule;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.tool.Archive;
import org.eclipse.jdt.internal.compiler.tool.EclipseFileObject;
import org.eclipse.jdt.internal.compiler.tool.Options;

public class EclipseFileManager
implements StandardJavaFileManager {
    private static final String NO_EXTENSION = "";
    static final int HAS_EXT_DIRS = 1;
    static final int HAS_BOOTCLASSPATH = 2;
    static final int HAS_ENDORSED_DIRS = 4;
    static final int HAS_PROCESSORPATH = 8;
    Map<File, Archive> archivesCache;
    Charset charset;
    Locale locale;
    Map<String, Iterable<? extends File>> locations;
    int flags;
    public ResourceBundle bundle;

    public EclipseFileManager(Locale locale, Charset charset) {
        this.locale = locale == null ? Locale.getDefault() : locale;
        this.charset = charset == null ? Charset.defaultCharset() : charset;
        this.locations = new HashMap<String, Iterable<? extends File>>();
        this.archivesCache = new HashMap<File, Archive>();
        try {
            this.setLocation(StandardLocation.PLATFORM_CLASS_PATH, this.getDefaultBootclasspath());
            Iterable<? extends File> defaultClasspath = this.getDefaultClasspath();
            this.setLocation(StandardLocation.CLASS_PATH, defaultClasspath);
            this.setLocation(StandardLocation.ANNOTATION_PROCESSOR_PATH, defaultClasspath);
        }
        catch (IOException iOException) {}
        try {
            this.bundle = Main.ResourceBundleFactory.getBundle((Locale)this.locale);
        }
        catch (MissingResourceException missingResourceException) {
            System.out.println("Missing resource : " + "org.eclipse.jdt.internal.compiler.batch.messages".replace('.', '/') + ".properties for locale " + locale);
        }
    }

    private void addFiles(File[][] jars, ArrayList<File> files) {
        if (jars != null) {
            File[][] fileArray = jars;
            int n = jars.length;
            int n2 = 0;
            while (n2 < n) {
                File[] currentJars = fileArray[n2];
                if (currentJars != null) {
                    File[] fileArray2 = currentJars;
                    int n3 = currentJars.length;
                    int n4 = 0;
                    while (n4 < n3) {
                        File currentJar = fileArray2[n4];
                        if (currentJar.exists()) {
                            files.add(currentJar);
                        }
                        ++n4;
                    }
                }
                ++n2;
            }
        }
    }

    private void addFilesFrom(File javaHome, String propertyName, String defaultPath, ArrayList<File> files) {
        String extdirsStr = System.getProperty(propertyName);
        File[] directoriesToCheck = null;
        if (extdirsStr == null) {
            if (javaHome != null) {
                directoriesToCheck = new File[]{new File(javaHome, defaultPath)};
            }
        } else {
            StringTokenizer tokenizer = new StringTokenizer(extdirsStr, File.pathSeparator);
            ArrayList<String> paths = new ArrayList<String>();
            while (tokenizer.hasMoreTokens()) {
                paths.add(tokenizer.nextToken());
            }
            if (paths.size() != 0) {
                directoriesToCheck = new File[paths.size()];
                int i = 0;
                while (i < directoriesToCheck.length) {
                    directoriesToCheck[i] = new File((String)paths.get(i));
                    ++i;
                }
            }
        }
        if (directoriesToCheck != null) {
            this.addFiles(Main.getLibrariesFiles((File[])directoriesToCheck), files);
        }
    }

    @Override
    public void close() throws IOException {
        this.locations = null;
        for (Archive archive : this.archivesCache.values()) {
            archive.close();
        }
    }

    private void collectAllMatchingFiles(File file, String normalizedPackageName, Set<JavaFileObject.Kind> kinds, boolean recurse, ArrayList<JavaFileObject> collector) {
        block16: {
            block15: {
                String path;
                if (this.isArchive(file)) break block15;
                File currentFile = new File(file, normalizedPackageName);
                if (!currentFile.exists()) {
                    return;
                }
                try {
                    path = currentFile.getCanonicalPath();
                }
                catch (IOException iOException) {
                    return;
                }
                if (File.separatorChar == '/' ? !path.endsWith(normalizedPackageName) : !path.endsWith(normalizedPackageName.replace('/', File.separatorChar))) {
                    return;
                }
                File[] files = currentFile.listFiles();
                if (files == null) break block16;
                File[] fileArray = files;
                int n = files.length;
                int n2 = 0;
                while (n2 < n) {
                    File f = fileArray[n2];
                    if (f.isDirectory() && recurse) {
                        this.collectAllMatchingFiles(file, String.valueOf(normalizedPackageName) + '/' + f.getName(), kinds, recurse, collector);
                    } else {
                        JavaFileObject.Kind kind = this.getKind(f);
                        if (kinds.contains((Object)kind)) {
                            collector.add(new EclipseFileObject(String.valueOf(normalizedPackageName) + f.getName(), f.toURI(), kind, this.charset));
                        }
                    }
                    ++n2;
                }
                break block16;
            }
            Archive archive = this.getArchive(file);
            String key = normalizedPackageName;
            if (!normalizedPackageName.endsWith("/")) {
                key = String.valueOf(key) + '/';
            }
            if (recurse) {
                for (String packageName : archive.allPackages()) {
                    ArrayList<String> types;
                    if (!packageName.startsWith(key) || (types = archive.getTypes(packageName)) == null) continue;
                    for (String typeName : types) {
                        JavaFileObject.Kind kind = this.getKind(this.getExtension(typeName));
                        if (!kinds.contains((Object)kind)) continue;
                        collector.add(archive.getArchiveFileObject(String.valueOf(packageName) + typeName, this.charset));
                    }
                }
            } else {
                ArrayList<String> types = archive.getTypes(key);
                if (types != null) {
                    for (String typeName : types) {
                        JavaFileObject.Kind kind = this.getKind(typeName);
                        if (!kinds.contains((Object)kind)) continue;
                        collector.add(archive.getArchiveFileObject(String.valueOf(normalizedPackageName) + typeName, this.charset));
                    }
                }
            }
        }
    }

    private Iterable<? extends File> concatFiles(Iterable<? extends File> iterable, Iterable<? extends File> iterable2) {
        ArrayList<File> list = new ArrayList<File>();
        if (iterable2 == null) {
            return iterable;
        }
        Iterator<? extends File> iterator = iterable.iterator();
        while (iterator.hasNext()) {
            list.add(iterator.next());
        }
        iterator = iterable2.iterator();
        while (iterator.hasNext()) {
            list.add(iterator.next());
        }
        return list;
    }

    @Override
    public void flush() throws IOException {
        for (Archive archive : this.archivesCache.values()) {
            archive.flush();
        }
    }

    private Archive getArchive(File f) {
        Archive archive = this.archivesCache.get(f);
        if (archive == null) {
            if (f.exists()) {
                try {
                    archive = new Archive(f);
                }
                catch (ZipException zipException) {
                }
                catch (IOException iOException) {}
                if (archive != null) {
                    this.archivesCache.put(f, archive);
                } else {
                    this.archivesCache.put(f, Archive.UNKNOWN_ARCHIVE);
                }
            } else {
                this.archivesCache.put(f, Archive.UNKNOWN_ARCHIVE);
            }
        }
        return archive;
    }

    @Override
    public ClassLoader getClassLoader(JavaFileManager.Location location) {
        Iterable<? extends File> files = this.getLocation(location);
        if (files == null) {
            return null;
        }
        ArrayList<URL> allURLs = new ArrayList<URL>();
        for (File file : files) {
            try {
                allURLs.add(file.toURI().toURL());
            }
            catch (MalformedURLException e) {
                throw new RuntimeException(e);
            }
        }
        URL[] uRLArray = new URL[allURLs.size()];
        return new URLClassLoader(allURLs.toArray(uRLArray), this.getClass().getClassLoader());
    }

    private Iterable<? extends File> getPathsFrom(String path) {
        ArrayList paths = new ArrayList();
        ArrayList<File> files = new ArrayList<File>();
        try {
            this.processPathEntries(4, paths, path, this.charset.name(), false, false);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
        for (FileSystem.Classpath classpath : paths) {
            files.add(new File(classpath.getPath()));
        }
        return files;
    }

    Iterable<? extends File> getDefaultBootclasspath() {
        ArrayList<File> files = new ArrayList<File>();
        String javaversion = System.getProperty("java.version");
        if (javaversion != null && !javaversion.startsWith("1.6")) {
            return null;
        }
        String javaHome = System.getProperty("java.home");
        File javaHomeFile = null;
        if (javaHome != null && !(javaHomeFile = new File(javaHome)).exists()) {
            javaHomeFile = null;
        }
        this.addFilesFrom(javaHomeFile, "java.endorsed.dirs", "/lib/endorsed", files);
        if (javaHomeFile != null) {
            File[] directoriesToCheck = null;
            directoriesToCheck = System.getProperty("os.name").startsWith("Mac") ? new File[]{new File(javaHomeFile, "../Classes")} : new File[]{new File(javaHomeFile, "lib")};
            File[][] jars = Main.getLibrariesFiles((File[])directoriesToCheck);
            this.addFiles(jars, files);
        }
        this.addFilesFrom(javaHomeFile, "java.ext.dirs", "/lib/ext", files);
        return files;
    }

    Iterable<? extends File> getDefaultClasspath() {
        ArrayList<File> files = new ArrayList<File>();
        String classProp = System.getProperty("java.class.path");
        if (classProp == null || classProp.length() == 0) {
            return null;
        }
        StringTokenizer tokenizer = new StringTokenizer(classProp, File.pathSeparator);
        while (tokenizer.hasMoreTokens()) {
            String token = tokenizer.nextToken();
            File file = new File(token);
            if (!file.exists()) continue;
            files.add(file);
        }
        return files;
    }

    private Iterable<? extends File> getEndorsedDirsFrom(String path) {
        ArrayList paths = new ArrayList();
        ArrayList<File> files = new ArrayList<File>();
        try {
            this.processPathEntries(4, paths, path, this.charset.name(), false, false);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
        for (FileSystem.Classpath classpath : paths) {
            files.add(new File(classpath.getPath()));
        }
        return files;
    }

    private Iterable<? extends File> getExtdirsFrom(String path) {
        ArrayList paths = new ArrayList();
        ArrayList<File> files = new ArrayList<File>();
        try {
            this.processPathEntries(4, paths, path, this.charset.name(), false, false);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
        for (FileSystem.Classpath classpath : paths) {
            files.add(new File(classpath.getPath()));
        }
        return files;
    }

    private String getExtension(File file) {
        String name = file.getName();
        return this.getExtension(name);
    }

    private String getExtension(String name) {
        int index = name.lastIndexOf(46);
        if (index == -1) {
            return NO_EXTENSION;
        }
        return name.substring(index);
    }

    @Override
    public FileObject getFileForInput(JavaFileManager.Location location, String packageName, String relativeName) throws IOException {
        Iterable<? extends File> files = this.getLocation(location);
        if (files == null) {
            throw new IllegalArgumentException("Unknown location : " + location);
        }
        String normalizedFileName = String.valueOf(this.normalized(packageName)) + '/' + relativeName.replace('\\', '/');
        for (File file : files) {
            Archive archive;
            if (file.isDirectory()) {
                File f = new File(file, normalizedFileName);
                if (!f.exists()) continue;
                return new EclipseFileObject(String.valueOf(packageName) + File.separator + relativeName, f.toURI(), this.getKind(f), this.charset);
            }
            if (!this.isArchive(file) || (archive = this.getArchive(file)) == Archive.UNKNOWN_ARCHIVE || !archive.contains(normalizedFileName)) continue;
            return archive.getArchiveFileObject(normalizedFileName, this.charset);
        }
        return null;
    }

    @Override
    public FileObject getFileForOutput(JavaFileManager.Location location, String packageName, String relativeName, FileObject sibling) throws IOException {
        Iterable<? extends File> files = this.getLocation(location);
        if (files == null) {
            throw new IllegalArgumentException("Unknown location : " + location);
        }
        Iterator<? extends File> iterator = files.iterator();
        if (iterator.hasNext()) {
            File file = iterator.next();
            String normalizedFileName = String.valueOf(this.normalized(packageName)) + '/' + relativeName.replace('\\', '/');
            File f = new File(file, normalizedFileName);
            return new EclipseFileObject(String.valueOf(packageName) + File.separator + relativeName, f.toURI(), this.getKind(f), this.charset);
        }
        throw new IllegalArgumentException("location is empty : " + location);
    }

    @Override
    public JavaFileObject getJavaFileForInput(JavaFileManager.Location location, String className, JavaFileObject.Kind kind) throws IOException {
        if (kind != JavaFileObject.Kind.CLASS && kind != JavaFileObject.Kind.SOURCE) {
            throw new IllegalArgumentException("Invalid kind : " + (Object)((Object)kind));
        }
        Iterable<? extends File> files = this.getLocation(location);
        if (files == null) {
            throw new IllegalArgumentException("Unknown location : " + location);
        }
        String normalizedFileName = this.normalized(className);
        normalizedFileName = String.valueOf(normalizedFileName) + kind.extension;
        for (File file : files) {
            Archive archive;
            if (file.isDirectory()) {
                File f = new File(file, normalizedFileName);
                if (!f.exists()) continue;
                return new EclipseFileObject(className, f.toURI(), kind, this.charset);
            }
            if (!this.isArchive(file) || (archive = this.getArchive(file)) == Archive.UNKNOWN_ARCHIVE || !archive.contains(normalizedFileName)) continue;
            return archive.getArchiveFileObject(normalizedFileName, this.charset);
        }
        return null;
    }

    @Override
    public JavaFileObject getJavaFileForOutput(JavaFileManager.Location location, String className, JavaFileObject.Kind kind, FileObject sibling) throws IOException {
        if (kind != JavaFileObject.Kind.CLASS && kind != JavaFileObject.Kind.SOURCE) {
            throw new IllegalArgumentException("Invalid kind : " + (Object)((Object)kind));
        }
        Iterable<? extends File> files = this.getLocation(location);
        if (files == null) {
            if (!location.equals(StandardLocation.CLASS_OUTPUT) && !location.equals(StandardLocation.SOURCE_OUTPUT)) {
                throw new IllegalArgumentException("Unknown location : " + location);
            }
            if (sibling != null) {
                String normalizedFileName = this.normalized(className);
                int index = normalizedFileName.lastIndexOf(47);
                if (index != -1) {
                    normalizedFileName = normalizedFileName.substring(index + 1);
                }
                normalizedFileName = String.valueOf(normalizedFileName) + kind.extension;
                URI uri = sibling.toUri();
                URI uri2 = null;
                try {
                    String path = uri.getPath();
                    index = path.lastIndexOf(47);
                    if (index != -1) {
                        path = path.substring(0, index + 1);
                        path = String.valueOf(path) + normalizedFileName;
                    }
                    uri2 = new URI(uri.getScheme(), uri.getHost(), path, uri.getFragment());
                }
                catch (URISyntaxException uRISyntaxException) {
                    throw new IllegalArgumentException("invalid sibling");
                }
                return new EclipseFileObject(className, uri2, kind, this.charset);
            }
            String normalizedFileName = this.normalized(className);
            normalizedFileName = String.valueOf(normalizedFileName) + kind.extension;
            File f = new File(System.getProperty("user.dir"), normalizedFileName);
            return new EclipseFileObject(className, f.toURI(), kind, this.charset);
        }
        Iterator<? extends File> iterator = files.iterator();
        if (iterator.hasNext()) {
            File file = iterator.next();
            String normalizedFileName = this.normalized(className);
            normalizedFileName = String.valueOf(normalizedFileName) + kind.extension;
            File f = new File(file, normalizedFileName);
            return new EclipseFileObject(className, f.toURI(), kind, this.charset);
        }
        throw new IllegalArgumentException("location is empty : " + location);
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjects(File ... files) {
        return this.getJavaFileObjectsFromFiles(Arrays.asList(files));
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjects(String ... names) {
        return this.getJavaFileObjectsFromStrings(Arrays.asList(names));
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjectsFromFiles(Iterable<? extends File> files) {
        ArrayList<EclipseFileObject> javaFileArrayList = new ArrayList<EclipseFileObject>();
        for (File file : files) {
            javaFileArrayList.add(new EclipseFileObject(file.getAbsolutePath(), file.toURI(), this.getKind(file), this.charset));
        }
        return javaFileArrayList;
    }

    @Override
    public Iterable<? extends JavaFileObject> getJavaFileObjectsFromStrings(Iterable<String> names) {
        ArrayList<File> files = new ArrayList<File>();
        for (String name : names) {
            files.add(new File(name));
        }
        return this.getJavaFileObjectsFromFiles(files);
    }

    public JavaFileObject.Kind getKind(File f) {
        return this.getKind(this.getExtension(f));
    }

    private JavaFileObject.Kind getKind(String extension) {
        if (JavaFileObject.Kind.CLASS.extension.equals(extension)) {
            return JavaFileObject.Kind.CLASS;
        }
        if (JavaFileObject.Kind.SOURCE.extension.equals(extension)) {
            return JavaFileObject.Kind.SOURCE;
        }
        if (JavaFileObject.Kind.HTML.extension.equals(extension)) {
            return JavaFileObject.Kind.HTML;
        }
        return JavaFileObject.Kind.OTHER;
    }

    @Override
    public Iterable<? extends File> getLocation(JavaFileManager.Location location) {
        if (this.locations == null) {
            return null;
        }
        return this.locations.get(location.getName());
    }

    private Iterable<? extends File> getOutputDir(String string) {
        if ("none".equals(string)) {
            return null;
        }
        File file = new File(string);
        if (file.exists() && !file.isDirectory()) {
            throw new IllegalArgumentException("file : " + file.getAbsolutePath() + " is not a directory");
        }
        ArrayList<File> list = new ArrayList<File>(1);
        list.add(file);
        return list;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public boolean handleOption(String current, Iterator<String> remaining) {
        try {
            if ("-bootclasspath".equals(current)) {
                if (!remaining.hasNext()) throw new IllegalArgumentException();
                Iterable<? extends File> bootclasspaths = this.getPathsFrom(remaining.next());
                if (bootclasspaths != null) {
                    Iterable<? extends File> iterable = this.getLocation(StandardLocation.PLATFORM_CLASS_PATH);
                    if ((this.flags & 4) == 0 && (this.flags & 1) == 0) {
                        this.setLocation(StandardLocation.PLATFORM_CLASS_PATH, bootclasspaths);
                    } else if ((this.flags & 4) != 0) {
                        this.setLocation(StandardLocation.PLATFORM_CLASS_PATH, this.concatFiles(iterable, bootclasspaths));
                    } else {
                        this.setLocation(StandardLocation.PLATFORM_CLASS_PATH, this.prependFiles(iterable, bootclasspaths));
                    }
                }
                this.flags |= 2;
                return true;
            }
            if ("-classpath".equals(current) || "-cp".equals(current)) {
                if (!remaining.hasNext()) throw new IllegalArgumentException();
                Iterable<? extends File> classpaths = this.getPathsFrom(remaining.next());
                if (classpaths == null) return true;
                Iterable<? extends File> iterable = this.getLocation(StandardLocation.CLASS_PATH);
                if (iterable != null) {
                    this.setLocation(StandardLocation.CLASS_PATH, this.concatFiles(iterable, classpaths));
                } else {
                    this.setLocation(StandardLocation.CLASS_PATH, classpaths);
                }
                if ((this.flags & 8) != 0) return true;
                this.setLocation(StandardLocation.ANNOTATION_PROCESSOR_PATH, classpaths);
                return true;
            }
            if ("-encoding".equals(current)) {
                if (!remaining.hasNext()) throw new IllegalArgumentException();
                this.charset = Charset.forName(remaining.next());
                return true;
            }
            if ("-sourcepath".equals(current)) {
                if (!remaining.hasNext()) throw new IllegalArgumentException();
                Iterable<? extends File> sourcepaths = this.getPathsFrom(remaining.next());
                if (sourcepaths == null) return true;
                this.setLocation(StandardLocation.SOURCE_PATH, sourcepaths);
                return true;
            }
            if ("-extdirs".equals(current)) {
                if (!remaining.hasNext()) throw new IllegalArgumentException();
                Iterable<? extends File> iterable = this.getLocation(StandardLocation.PLATFORM_CLASS_PATH);
                this.setLocation(StandardLocation.PLATFORM_CLASS_PATH, this.concatFiles(iterable, this.getExtdirsFrom(remaining.next())));
                this.flags |= 1;
                return true;
            }
            if ("-endorseddirs".equals(current)) {
                if (!remaining.hasNext()) throw new IllegalArgumentException();
                Iterable<? extends File> iterable = this.getLocation(StandardLocation.PLATFORM_CLASS_PATH);
                this.setLocation(StandardLocation.PLATFORM_CLASS_PATH, this.prependFiles(iterable, this.getEndorsedDirsFrom(remaining.next())));
                this.flags |= 4;
                return true;
            }
            if ("-d".equals(current)) {
                if (!remaining.hasNext()) throw new IllegalArgumentException();
                Iterable<? extends File> outputDir = this.getOutputDir(remaining.next());
                if (outputDir == null) return true;
                this.setLocation(StandardLocation.CLASS_OUTPUT, outputDir);
                return true;
            }
            if ("-s".equals(current)) {
                if (!remaining.hasNext()) throw new IllegalArgumentException();
                Iterable<? extends File> outputDir = this.getOutputDir(remaining.next());
                if (outputDir == null) return true;
                this.setLocation(StandardLocation.SOURCE_OUTPUT, outputDir);
                return true;
            }
            if (!"-processorpath".equals(current)) return false;
            if (!remaining.hasNext()) throw new IllegalArgumentException();
            Iterable<? extends File> processorpaths = this.getPathsFrom(remaining.next());
            if (processorpaths != null) {
                this.setLocation(StandardLocation.ANNOTATION_PROCESSOR_PATH, processorpaths);
            }
            this.flags |= 8;
            return true;
        }
        catch (IOException iOException) {}
        return false;
    }

    @Override
    public boolean hasLocation(JavaFileManager.Location location) {
        return this.locations != null && this.locations.containsKey(location.getName());
    }

    @Override
    public String inferBinaryName(JavaFileManager.Location location, JavaFileObject file) {
        String name = file.getName();
        JavaFileObject javaFileObject = null;
        int index = name.lastIndexOf(46);
        if (index != -1) {
            name = name.substring(0, index);
        }
        try {
            javaFileObject = this.getJavaFileForInput(location, name, file.getKind());
        }
        catch (IOException iOException) {}
        if (javaFileObject == null) {
            return null;
        }
        return this.normalized(name);
    }

    private boolean isArchive(File f) {
        String extension = this.getExtension(f);
        return extension.equalsIgnoreCase(".jar") || extension.equalsIgnoreCase(".zip");
    }

    @Override
    public boolean isSameFile(FileObject fileObject1, FileObject fileObject2) {
        if (!(fileObject1 instanceof EclipseFileObject)) {
            throw new IllegalArgumentException("Unsupported file object class : " + fileObject1.getClass());
        }
        if (!(fileObject2 instanceof EclipseFileObject)) {
            throw new IllegalArgumentException("Unsupported file object class : " + fileObject2.getClass());
        }
        return fileObject1.equals(fileObject2);
    }

    @Override
    public int isSupportedOption(String option) {
        return Options.processOptionsFileManager(option);
    }

    @Override
    public Iterable<JavaFileObject> list(JavaFileManager.Location location, String packageName, Set<JavaFileObject.Kind> kinds, boolean recurse) throws IOException {
        Iterable<? extends File> allFilesInLocations = this.getLocation(location);
        if (allFilesInLocations == null) {
            throw new IllegalArgumentException("Unknown location : " + location);
        }
        ArrayList<JavaFileObject> collector = new ArrayList<JavaFileObject>();
        String normalizedPackageName = this.normalized(packageName);
        for (File file : allFilesInLocations) {
            this.collectAllMatchingFiles(file, normalizedPackageName, kinds, recurse, collector);
        }
        return collector;
    }

    private String normalized(String className) {
        char[] classNameChars = className.toCharArray();
        int i = 0;
        int max = classNameChars.length;
        while (i < max) {
            switch (classNameChars[i]) {
                case '\\': {
                    classNameChars[i] = 47;
                    break;
                }
                case '.': {
                    classNameChars[i] = 47;
                }
            }
            ++i;
        }
        return new String(classNameChars);
    }

    private Iterable<? extends File> prependFiles(Iterable<? extends File> iterable, Iterable<? extends File> iterable2) {
        if (iterable2 == null) {
            return iterable;
        }
        ArrayList<File> list = new ArrayList<File>();
        Iterator<? extends File> iterator = iterable2.iterator();
        while (iterator.hasNext()) {
            list.add(iterator.next());
        }
        iterator = iterable.iterator();
        while (iterator.hasNext()) {
            list.add(iterator.next());
        }
        return list;
    }

    @Override
    public void setLocation(JavaFileManager.Location location, Iterable<? extends File> path) throws IOException {
        if (path != null) {
            if (location.isOutputLocation()) {
                int count = 0;
                Iterator<? extends File> iterator = path.iterator();
                while (iterator.hasNext()) {
                    iterator.next();
                    ++count;
                }
                if (count != 1) {
                    throw new IllegalArgumentException("output location can only have one path");
                }
            }
            this.locations.put(location.getName(), path);
        }
    }

    public void setLocale(Locale locale) {
        this.locale = locale == null ? Locale.getDefault() : locale;
        try {
            this.bundle = Main.ResourceBundleFactory.getBundle((Locale)this.locale);
        }
        catch (MissingResourceException e) {
            System.out.println("Missing resource : " + "org.eclipse.jdt.internal.compiler.batch.messages".replace('.', '/') + ".properties for locale " + locale);
            throw e;
        }
    }

    public void processPathEntries(int defaultSize, ArrayList paths, String currentPath, String customEncoding, boolean isSourceOnly, boolean rejectDestinationPathOnJars) {
        String currentClasspathName = null;
        String currentDestinationPath = null;
        ArrayList<String> currentRuleSpecs = new ArrayList<String>(defaultSize);
        StringTokenizer tokenizer = new StringTokenizer(currentPath, String.valueOf(File.pathSeparator) + "[]", true);
        ArrayList<String> tokens = new ArrayList<String>();
        while (tokenizer.hasMoreTokens()) {
            tokens.add(tokenizer.nextToken());
        }
        int state = 0;
        String token = null;
        int cursor = 0;
        int tokensNb = tokens.size();
        int bracket = -1;
        while (cursor < tokensNb && state != 99) {
            if ((token = (String)tokens.get(cursor++)).equals(File.pathSeparator)) {
                switch (state) {
                    case 0: 
                    case 3: 
                    case 10: {
                        break;
                    }
                    case 1: 
                    case 2: 
                    case 8: {
                        state = 3;
                        this.addNewEntry(paths, currentClasspathName, currentRuleSpecs, customEncoding, currentDestinationPath, isSourceOnly, rejectDestinationPathOnJars);
                        currentRuleSpecs.clear();
                        break;
                    }
                    case 6: {
                        state = 4;
                        break;
                    }
                    case 7: {
                        throw new IllegalArgumentException(this.bind("configure.incorrectDestinationPathEntry", currentPath));
                    }
                    case 11: {
                        cursor = bracket + 1;
                        state = 5;
                        break;
                    }
                    default: {
                        state = 99;
                        break;
                    }
                }
            } else if (token.equals("[")) {
                switch (state) {
                    case 0: {
                        currentClasspathName = NO_EXTENSION;
                    }
                    case 1: {
                        bracket = cursor - 1;
                    }
                    case 11: {
                        state = 10;
                        break;
                    }
                    case 2: {
                        state = 9;
                        break;
                    }
                    case 8: {
                        state = 5;
                        break;
                    }
                    default: {
                        state = 99;
                        break;
                    }
                }
            } else if (token.equals("]")) {
                switch (state) {
                    case 6: {
                        state = 2;
                        break;
                    }
                    case 7: {
                        state = 8;
                        break;
                    }
                    case 10: {
                        state = 11;
                        break;
                    }
                    default: {
                        state = 99;
                        break;
                    }
                }
            } else {
                switch (state) {
                    case 0: 
                    case 3: {
                        state = 1;
                        currentClasspathName = token;
                        break;
                    }
                    case 5: {
                        if (token.startsWith("-d ")) {
                            if (currentDestinationPath != null) {
                                throw new IllegalArgumentException(this.bind("configure.duplicateDestinationPathEntry", currentPath));
                            }
                            currentDestinationPath = token.substring(3).trim();
                            state = 7;
                            break;
                        }
                    }
                    case 4: {
                        if (currentDestinationPath != null) {
                            throw new IllegalArgumentException(this.bind("configure.accessRuleAfterDestinationPath", currentPath));
                        }
                        state = 6;
                        currentRuleSpecs.add(token);
                        break;
                    }
                    case 9: {
                        if (!token.startsWith("-d ")) {
                            state = 99;
                            break;
                        }
                        currentDestinationPath = token.substring(3).trim();
                        state = 7;
                        break;
                    }
                    case 11: {
                        int i = bracket;
                        while (i < cursor) {
                            currentClasspathName = String.valueOf(currentClasspathName) + (String)tokens.get(i);
                            ++i;
                        }
                        state = 1;
                        break;
                    }
                    case 10: {
                        break;
                    }
                    default: {
                        state = 99;
                    }
                }
            }
            if (state != 11 || cursor != tokensNb) continue;
            cursor = bracket + 1;
            state = 5;
        }
        switch (state) {
            case 3: {
                break;
            }
            case 1: 
            case 2: 
            case 8: {
                this.addNewEntry(paths, currentClasspathName, currentRuleSpecs, customEncoding, currentDestinationPath, isSourceOnly, rejectDestinationPathOnJars);
            }
        }
    }

    protected void addNewEntry(ArrayList paths, String currentClasspathName, ArrayList currentRuleSpecs, String customEncoding, String destPath, boolean isSourceOnly, boolean rejectDestinationPathOnJars) {
        int rulesSpecsSize = currentRuleSpecs.size();
        AccessRuleSet accessRuleSet = null;
        if (rulesSpecsSize != 0) {
            AccessRule[] accessRules = new AccessRule[currentRuleSpecs.size()];
            boolean rulesOK = true;
            Iterator i = currentRuleSpecs.iterator();
            int j = 0;
            while (i.hasNext()) {
                String ruleSpec = (String)i.next();
                char key = ruleSpec.charAt(0);
                String pattern = ruleSpec.substring(1);
                if (pattern.length() > 0) {
                    switch (key) {
                        case '+': {
                            accessRules[j++] = new AccessRule(pattern.toCharArray(), 0);
                            break;
                        }
                        case '~': {
                            accessRules[j++] = new AccessRule(pattern.toCharArray(), 0x1000118);
                            break;
                        }
                        case '-': {
                            accessRules[j++] = new AccessRule(pattern.toCharArray(), 0x1000133);
                            break;
                        }
                        case '?': {
                            accessRules[j++] = new AccessRule(pattern.toCharArray(), 0x1000133, true);
                            break;
                        }
                        default: {
                            rulesOK = false;
                            break;
                        }
                    }
                    continue;
                }
                rulesOK = false;
            }
            if (rulesOK) {
                accessRuleSet = new AccessRuleSet(accessRules, 0, currentClasspathName);
            } else {
                return;
            }
        }
        if ("none".equals(destPath)) {
            destPath = "none";
        }
        if (rejectDestinationPathOnJars && destPath != null && (currentClasspathName.endsWith(".jar") || currentClasspathName.endsWith(".zip"))) {
            throw new IllegalArgumentException(this.bind("configure.unexpectedDestinationPathEntryFile", currentClasspathName));
        }
        FileSystem.Classpath currentClasspath = FileSystem.getClasspath((String)currentClasspathName, (String)customEncoding, (boolean)isSourceOnly, accessRuleSet, (String)destPath);
        if (currentClasspath != null) {
            paths.add(currentClasspath);
        }
    }

    private String bind(String id, String binding) {
        return this.bind(id, new String[]{binding});
    }

    private String bind(String id, String[] arguments) {
        if (id == null) {
            return "No message available";
        }
        String message = null;
        try {
            message = this.bundle.getString(id);
        }
        catch (MissingResourceException missingResourceException) {
            return "Missing message: " + id + " in: " + "org.eclipse.jdt.internal.compiler.batch.messages";
        }
        return MessageFormat.format(message, arguments);
    }
}

