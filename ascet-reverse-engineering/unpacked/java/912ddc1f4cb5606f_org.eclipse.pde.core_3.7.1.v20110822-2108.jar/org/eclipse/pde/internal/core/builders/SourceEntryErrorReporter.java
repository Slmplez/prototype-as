/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceVisitor
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.BuildErrorReporter;
import org.eclipse.pde.internal.core.builders.SourceEntryErrorReporter;
import org.eclipse.pde.internal.core.project.PDEProject;

public class SourceEntryErrorReporter
extends BuildErrorReporter {
    private static final String DEF_OUTPUT_ENTRY = "output..";
    private HashMap fSourceFolderMap = new HashMap(4);
    private HashMap fOutputFolderMap = new HashMap(4);
    private IBuild fBuild = null;
    Map fDefaultLibraryEncodings = new HashMap();
    Map fCustomEncodings = new HashMap();

    public SourceEntryErrorReporter(IFile file, IBuild model) {
        super(file);
        this.fBuild = model;
    }

    public void initialize(ArrayList sourceEntries, ArrayList outputEntries, IClasspathEntry[] cpes, IProject project) {
        IPath path;
        String[] tokens;
        String libName;
        this.fProject = project;
        IPath defaultOutputLocation = null;
        IJavaProject javaProject = JavaCore.create((IProject)this.fProject);
        try {
            defaultOutputLocation = javaProject.getOutputLocation();
        }
        catch (JavaModelException javaModelException) {}
        ArrayList<String> pluginLibraryNames = new ArrayList<String>(1);
        IPluginModelBase pluginModel = PluginRegistry.findModel(this.fProject);
        if (pluginModel != null) {
            IPluginLibrary[] pluginLibraries = pluginModel.getPluginBase().getLibraries();
            int i = 0;
            while (i < pluginLibraries.length) {
                pluginLibraryNames.add(pluginLibraries[i].getName());
                ++i;
            }
        }
        if (!pluginLibraryNames.contains(".")) {
            pluginLibraryNames.add(".");
        }
        int i = 0;
        while (i < cpes.length) {
            IPath outputPath;
            OutputFolder outputFolder;
            if (cpes[i].getEntryKind() == 3) {
                IPath sourcePath = this.getPath(cpes[i]);
                if (sourcePath != null) {
                    SourceFolder sourceFolder;
                    IPath outputLocation = cpes[i].getOutputLocation();
                    if (outputLocation == null) {
                        outputLocation = defaultOutputLocation;
                    }
                    if ((outputFolder = (OutputFolder)this.fOutputFolderMap.get(outputPath = this.getPath(outputLocation))) == null) {
                        outputFolder = new OutputFolder(outputPath);
                    }
                    if ((sourceFolder = (SourceFolder)this.fSourceFolderMap.get(sourcePath)) == null) {
                        sourceFolder = new SourceFolder(sourcePath, outputFolder);
                    }
                    outputFolder.addSourceFolder(sourceFolder);
                    this.fOutputFolderMap.put(outputPath, outputFolder);
                    this.fSourceFolderMap.put(sourcePath, sourceFolder);
                }
            } else if (cpes[i].getEntryKind() == 1) {
                IClasspathEntry entry = cpes[i];
                IPackageFragmentRoot[] roots = javaProject.findPackageFragmentRoots(entry);
                outputPath = null;
                if (roots.length == 1 && !roots[0].isArchive()) {
                    outputPath = this.getPath(entry);
                    outputFolder = new OutputFolder(outputPath, true);
                    this.fOutputFolderMap.put(outputPath, outputFolder);
                }
            }
            ++i;
        }
        Iterator iterator = sourceEntries.iterator();
        while (iterator.hasNext()) {
            IBuildEntry sourceEntry = (IBuildEntry)iterator.next();
            libName = sourceEntry.getName().substring("source.".length());
            if (!pluginLibraryNames.contains(libName)) {
                this.prepareError(sourceEntry.getName(), null, NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_MissingLibrary, (Object)libName), 8197, this.fSrcLibSeverity, "");
            }
            tokens = sourceEntry.getTokens();
            int i2 = 0;
            while (i2 < tokens.length) {
                path = new Path(tokens[i2]).addTrailingSeparator();
                SourceFolder sourceFolder = (SourceFolder)this.fSourceFolderMap.get(path);
                if (sourceFolder == null) {
                    sourceFolder = new SourceFolder(path, null);
                    this.fSourceFolderMap.put(path, sourceFolder);
                }
                sourceFolder.setToken(tokens[i2]);
                sourceFolder.addLib(libName);
                ++i2;
            }
        }
        iterator = outputEntries.iterator();
        while (iterator.hasNext()) {
            IBuildEntry outputEntry = (IBuildEntry)iterator.next();
            libName = outputEntry.getName().substring("output.".length());
            if (!pluginLibraryNames.contains(libName)) {
                this.prepareError(outputEntry.getName(), null, NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_MissingLibrary, (Object)libName), 8197, this.fOututLibSeverity, "");
            }
            tokens = outputEntry.getTokens();
            int i3 = 0;
            while (i3 < tokens.length) {
                OutputFolder outputFolder;
                path = new Path(tokens[i3]).addTrailingSeparator();
                if (path.segmentCount() == 1 && path.segment(0).equals(".")) {
                    path = Path.ROOT;
                }
                if ((outputFolder = (OutputFolder)this.fOutputFolderMap.get(path)) == null) {
                    outputFolder = new OutputFolder(path);
                    this.fOutputFolderMap.put(path, outputFolder);
                }
                outputFolder.setToken(tokens[i3]);
                outputFolder.addLib(libName);
                ++i3;
            }
        }
    }

    private IPath getPath(Object entry) {
        IPath path = null;
        if (entry instanceof IClasspathEntry) {
            IClasspathEntry cpes = (IClasspathEntry)entry;
            path = cpes.getPath();
        } else if (entry instanceof IPath) {
            path = (IPath)entry;
        }
        if (path.matchingFirstSegments(this.fProject.getFullPath()) > 0) {
            path = path.removeFirstSegments(1);
        }
        if (path != null) {
            return path.addTrailingSeparator();
        }
        return null;
    }

    public void validate() {
        String message;
        String message2;
        Iterator iterator = this.fOutputFolderMap.keySet().iterator();
        while (iterator.hasNext()) {
            IPath outputPath = (IPath)iterator.next();
            OutputFolder outputFolder = (OutputFolder)this.fOutputFolderMap.get(outputPath);
            ArrayList sourceFolders = outputFolder.getSourceFolders();
            ArrayList outputFolderLibs = new ArrayList(outputFolder.getLibs());
            if (sourceFolders.size() == 0) {
                IPluginModelBase model;
                if (!outputFolder.isLibrary()) {
                    Iterator libNameiterator = outputFolderLibs.iterator();
                    while (libNameiterator.hasNext()) {
                        String libName = (String)libNameiterator.next();
                        IResource folderEntry = this.fProject.findMember(outputPath);
                        String message3 = folderEntry == null || !folderEntry.exists() || !(folderEntry instanceof IContainer) ? NLS.bind((String)PDECoreMessages.BuildErrorReporter_missingFolder, (Object)outputPath.toString()) : NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_InvalidOutputFolder, (Object)outputPath.toString());
                        this.prepareError("output." + libName, outputFolder.getToken(), message3, 8197, this.fOututLibSeverity, "");
                    }
                    continue;
                }
                if (outputFolderLibs.size() != 0 || (model = PluginRegistry.findModel(this.fProject)) == null) continue;
                IPluginLibrary[] libs = model.getPluginBase().getLibraries();
                message2 = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_MissingOutputLibForClassFolder, (Object)outputPath.toString());
                if (libs.length > 0) {
                    this.prepareError("output.", null, message2, -1, this.fOututLibSeverity, "");
                    continue;
                }
                this.prepareError(DEF_OUTPUT_ENTRY, outputPath.toString(), message2, 8195, this.fOututLibSeverity, "");
                continue;
            }
            String srcFolderLibName = null;
            int i = 0;
            while (i < sourceFolders.size()) {
                SourceFolder sourceFolder = (SourceFolder)sourceFolders.get(i);
                ArrayList srcFolderLibs = sourceFolder.getLibs();
                outputFolderLibs.removeAll(srcFolderLibs);
                switch (srcFolderLibs.size()) {
                    case 0: {
                        break;
                    }
                    case 1: {
                        if (srcFolderLibName == null) {
                            srcFolderLibName = (String)srcFolderLibs.get(0);
                            break;
                        }
                        if (srcFolderLibName.equals(srcFolderLibs.get(0))) break;
                    }
                    default: {
                        String erringSrcFolders = this.join(sourceFolders.toArray(new SourceFolder[sourceFolders.size()]));
                        int j = 0;
                        while (j < sourceFolders.size()) {
                            SourceFolder srcFolder = (SourceFolder)sourceFolders.get(j);
                            int k = 0;
                            while (k < srcFolder.getLibs().size()) {
                                String libName = (String)srcFolder.getLibs().get(k);
                                message = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_DifferentTargetLibrary, (Object)erringSrcFolders);
                                this.prepareError("source." + libName, srcFolder.getToken(), message, -1, this.fSrcLibSeverity, "");
                                ++k;
                            }
                            ++j;
                        }
                        break block1;
                    }
                }
                ++i;
            }
            i = 0;
            while (i < outputFolderLibs.size()) {
                message2 = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_ExtraOutputFolder, (Object)outputFolder.getPath().toString(), (Object)("source." + outputFolderLibs.get(i)));
                this.prepareError("output." + outputFolderLibs.get(i), outputFolder.getToken(), message2, 8197, this.fOututLibSeverity, "");
                ++i;
            }
            if (outputFolder.getDupeLibName() == null) continue;
            String message4 = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_DupeOutputFolder, (Object)outputPath.toString(), (Object)("output." + outputFolder.getDupeLibName()));
            this.prepareError("output." + outputFolder.getDupeLibName(), outputFolder.getToken(), message4, -1, this.fOututLibSeverity, "");
        }
        class MissingOutputEntry {
            private List fSrcFolders;
            private List fOutputFolders;
            final /* synthetic */ SourceEntryErrorReporter this$0;

            MissingOutputEntry(SourceEntryErrorReporter sourceEntryErrorReporter) {
                this.this$0 = sourceEntryErrorReporter;
                this.fSrcFolders = new ArrayList<E>(1);
                this.fOutputFolders = new ArrayList<E>(1);
            }

            public String getOutputList() {
                return this.generateList(this.fOutputFolders);
            }

            public String getSourceList() {
                return this.generateList(this.fSrcFolders);
            }

            private String generateList(List strings) {
                StringBuffer buffer = new StringBuffer();
                Iterator<E> iterator = strings.iterator();
                while (iterator.hasNext()) {
                    String next = (String)iterator.next();
                    buffer.append(next);
                    if (!iterator.hasNext()) continue;
                    buffer.append(',');
                    buffer.append(' ');
                }
                return buffer.toString();
            }

            public void addSrcFolder(String sourcePath) {
                if (!this.fSrcFolders.contains(sourcePath)) {
                    this.fSrcFolders.add(sourcePath);
                }
            }

            public void addOutputFolder(String outputPath) {
                if (!this.fOutputFolders.contains(outputPath)) {
                    this.fOutputFolders.add(outputPath);
                }
            }
        }
        HashMap<String, MissingOutputEntry> missingOutputEntryErrors = new HashMap<String, MissingOutputEntry>(4);
        ArrayList<SourceFolder> toValidate = new ArrayList<SourceFolder>();
        Iterator<Object> iterator2 = this.fSourceFolderMap.keySet().iterator();
        while (iterator2.hasNext()) {
            IPath sourcePath = (IPath)iterator2.next();
            SourceFolder sourceFolder = (SourceFolder)this.fSourceFolderMap.get(sourcePath);
            OutputFolder outputFolder = sourceFolder.getOutputLocation();
            if (outputFolder == null) {
                IResource folderEntry = this.fProject.findMember(sourcePath);
                message2 = folderEntry == null || !folderEntry.exists() || !(folderEntry instanceof IContainer) ? NLS.bind((String)PDECoreMessages.BuildErrorReporter_missingFolder, (Object)sourcePath.toString()) : NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_InvalidSourceFolder, (Object)sourcePath.toString());
                ArrayList srcLibs = sourceFolder.getLibs();
                int i = 0;
                while (i < srcLibs.size()) {
                    String libName = (String)srcLibs.get(i);
                    this.prepareError("source." + libName, sourceFolder.getToken(), message2, 8197, this.fSrcLibSeverity, "");
                    ++i;
                }
                continue;
            }
            if (outputFolder.getLibs().size() == 0 && sourceFolder.getLibs().size() == 1) {
                String libName = (String)sourceFolder.getLibs().get(0);
                MissingOutputEntry errorEntry = (MissingOutputEntry)missingOutputEntryErrors.get(libName);
                if (errorEntry == null) {
                    errorEntry = new MissingOutputEntry(this);
                }
                errorEntry.addSrcFolder(sourcePath.toString());
                errorEntry.addOutputFolder(outputFolder.getToken());
                missingOutputEntryErrors.put(libName, errorEntry);
            }
            if (sourceFolder.getDupeLibName() != null) {
                String message5 = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_DupeSourceFolder, (Object)sourcePath.toString(), (Object)("source." + sourceFolder.getDupeLibName()));
                this.prepareError("source." + sourceFolder.getDupeLibName(), sourceFolder.getToken(), message5, -1, this.fSrcLibSeverity, "");
            }
            toValidate.add(sourceFolder);
        }
        Iterator iter = missingOutputEntryErrors.keySet().iterator();
        while (iter.hasNext()) {
            String libName = (String)iter.next();
            MissingOutputEntry errorEntry = (MissingOutputEntry)missingOutputEntryErrors.get(libName);
            String message6 = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_MissingOutputEntry, (Object)errorEntry.getSourceList(), (Object)("output." + libName));
            this.prepareError("output." + libName, errorEntry.getOutputList(), message6, 8195, this.fMissingOutputLibSeverity, "");
        }
        if (this.fEncodingSeverity == 0 || this.fEncodingSeverity == 1) {
            Object entry;
            iterator2 = toValidate.iterator();
            while (iterator2.hasNext()) {
                SourceFolder sourceFolder = (SourceFolder)iterator2.next();
                IPath sourcePath = sourceFolder.getPath();
                IProject container = this.fProject;
                if (!sourcePath.isEmpty() && !sourcePath.isRoot()) {
                    container = container.getFolder(sourcePath);
                }
                try {
                    ArrayList list = sourceFolder.getLibs();
                    String[] libs = list.toArray(new String[list.size()]);
                    String encoding = this.getExplicitEncoding((IContainer)container);
                    if (encoding != null) {
                        int i = 0;
                        while (i < libs.length) {
                            this.fDefaultLibraryEncodings.put(libs[i], encoding);
                            ++i;
                        }
                    }
                    container.accept((IResourceVisitor)new Visitor(sourceFolder));
                }
                catch (CoreException e) {
                    PDECore.log(e);
                }
            }
            IBuildEntry[] entries = this.fBuild.getBuildEntries();
            int i = 0;
            while (i < entries.length) {
                entry = entries[i];
                String name = entry.getName();
                if (name.startsWith("javacDefaultEncoding.")) {
                    String lib = name.substring("javacDefaultEncoding.".length());
                    String[] tokens = entry.getTokens();
                    if (tokens.length > 0) {
                        if (tokens.length == 1) {
                            String specified = tokens[0];
                            String expected = (String)this.fDefaultLibraryEncodings.remove(lib);
                            if (expected != null) {
                                if (!specified.equals(expected)) {
                                    this.prepareError(name, specified, NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_0, (Object[])new String[]{expected, specified, lib}), -1, this.fEncodingSeverity, "");
                                }
                            } else {
                                this.prepareError(name, null, NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_1, (Object[])new String[]{specified, lib}), 8197, this.fEncodingSeverity, "");
                            }
                        } else {
                            this.fDefaultLibraryEncodings.remove(lib);
                            this.prepareError(name, null, NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_2, (Object)lib), -1, this.fEncodingSeverity, "");
                        }
                    }
                } else if (name.startsWith("javacCustomEncodings.")) {
                    IContainer bundleRoot = PDEProject.getBundleRoot(this.fProject);
                    String lib = name.substring("javacCustomEncodings.".length());
                    String[] tokens = entry.getTokens();
                    if (tokens.length > 0) {
                        ArrayList<EncodingEntry> encodings = new ArrayList<EncodingEntry>();
                        int j = 0;
                        while (j < tokens.length) {
                            String special = tokens[j];
                            int index = special.indexOf(91);
                            if (index >= 0 && special.endsWith("]")) {
                                String path = special.substring(0, index);
                                String encoding = special.substring(index + 1, special.length() - 1);
                                IResource member = bundleRoot.findMember(path);
                                if (member == null) {
                                    String message7 = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_3, (Object[])new String[]{encoding, path});
                                    this.prepareError(name, special, message7, 8197, this.fEncodingSeverity, "");
                                } else {
                                    encodings.add(new EncodingEntry(member, encoding));
                                }
                            } else {
                                message = PDECoreMessages.SourceEntryErrorReporter_4;
                                this.prepareError(name, special, message, -1, this.fEncodingSeverity, "");
                            }
                            ++j;
                        }
                        List workspace = (List)this.fCustomEncodings.remove(lib);
                        if (workspace == null) {
                            this.prepareError(name, null, NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_5, (Object)lib), 8197, this.fEncodingSeverity, "");
                        } else {
                            String expected;
                            EncodingEntry ee;
                            HashMap<IResource, String> map = new HashMap<IResource, String>();
                            Iterator<Object> iter2 = workspace.iterator();
                            while (iter2.hasNext()) {
                                ee = (EncodingEntry)iter2.next();
                                map.put(ee.getResource(), ee.getEncoding());
                            }
                            iter2 = encodings.iterator();
                            while (iter2.hasNext()) {
                                ee = (EncodingEntry)iter2.next();
                                String specified = ee.getEncoding();
                                expected = (String)map.remove(ee.getResource());
                                if (expected == null) {
                                    this.prepareError(name, ee.getValue(), NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_6, (Object[])new String[]{expected, ee.getResource().getProjectRelativePath().toString()}), 8197, this.fEncodingSeverity, "");
                                    continue;
                                }
                                if (specified.equals(expected)) continue;
                                this.prepareError(name, ee.getValue(), NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_7, (Object[])new String[]{expected, ee.getResource().getProjectRelativePath().toString(), specified}), -1, this.fEncodingSeverity, "");
                            }
                            if (!map.isEmpty()) {
                                iter2 = map.entrySet().iterator();
                                while (iter2.hasNext()) {
                                    Map.Entry en = (Map.Entry)iter2.next();
                                    IResource res = (IResource)en.getKey();
                                    expected = (String)en.getValue();
                                    EncodingEntry missing = new EncodingEntry(res, expected);
                                    String m = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_8, (Object[])new String[]{expected, res.getProjectRelativePath().toString()});
                                    this.prepareError(name, missing.getValue(), m, 8195, this.fEncodingSeverity, "");
                                }
                            }
                        }
                    }
                }
                ++i;
            }
            Iterator iter3 = this.fDefaultLibraryEncodings.entrySet().iterator();
            while (iter3.hasNext()) {
                entry = iter3.next();
                String lib = (String)entry.getKey();
                String expected = (String)entry.getValue();
                this.prepareError("javacDefaultEncoding." + lib, expected, NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_9, (Object[])new String[]{expected, lib}), 8195, this.fEncodingSeverity, "");
            }
            iter3 = this.fCustomEncodings.entrySet().iterator();
            while (iter3.hasNext()) {
                entry = iter3.next();
                String lib = (String)entry.getKey();
                List encodings = (List)entry.getValue();
                Iterator iterator22 = encodings.iterator();
                while (iterator22.hasNext()) {
                    EncodingEntry encoding = (EncodingEntry)iterator22.next();
                    String m = NLS.bind((String)PDECoreMessages.SourceEntryErrorReporter_10, (Object[])new String[]{encoding.getEncoding(), encoding.getResource().getProjectRelativePath().toString()});
                    this.prepareError("javacCustomEncodings." + lib, encoding.getValue(), m, 8195, this.fEncodingSeverity, "");
                }
            }
        }
    }

    private String getExplicitEncoding(IContainer container) throws CoreException {
        IContainer parent;
        String encoding = container.getDefaultCharset(false);
        if (encoding == null && (parent = container.getParent()) != null) {
            switch (parent.getType()) {
                case 2: {
                    return this.getExplicitEncoding(parent);
                }
                case 4: {
                    return this.getExplicitEncoding(parent);
                }
            }
            return null;
        }
        return encoding;
    }

    private String join(ProjectFolder[] folders) {
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < folders.length) {
            String text = folders[i].getPath().toString().trim();
            if (text.length() > 0) {
                result.append(text);
                result.append(',');
            }
            ++i;
        }
        result.deleteCharAt(result.length() - 1);
        return result.toString();
    }

    public ArrayList getProblemList() {
        return this.fProblemList;
    }

    class EncodingEntry {
        private String fEncoding;
        private IResource fResource;

        EncodingEntry(IResource resource, String encoding) {
            this.fEncoding = encoding;
            this.fResource = resource;
        }

        public String getEncoding() {
            return this.fEncoding;
        }

        public IResource getResource() {
            return this.fResource;
        }

        public String toString() {
            return this.getValue();
        }

        public boolean equals(Object obj) {
            if (obj instanceof EncodingEntry) {
                EncodingEntry other = (EncodingEntry)obj;
                return other.fEncoding.equals(this.fEncoding) && other.fResource.equals((Object)this.fResource);
            }
            return false;
        }

        public int hashCode() {
            return this.fEncoding.hashCode() + this.fResource.hashCode();
        }

        String getValue() {
            StringBuffer buf = new StringBuffer();
            IContainer root = PDEProject.getBundleRoot(this.fResource.getProject());
            buf.append(this.fResource.getFullPath().makeRelativeTo(root.getFullPath()).makeAbsolute());
            buf.append('[');
            buf.append(this.fEncoding);
            buf.append(']');
            return buf.toString();
        }
    }

    class OutputFolder
    extends ProjectFolder {
        private ArrayList fSourceFolders = new ArrayList();
        private boolean fIsLibrary = false;

        public OutputFolder(IPath path) {
            super(path);
        }

        public OutputFolder(IPath path, boolean isLibrary) {
            this(path);
            this.fIsLibrary = isLibrary;
        }

        public void addSourceFolder(SourceFolder sourceFolder) {
            if (!this.fSourceFolders.contains(sourceFolder)) {
                this.fSourceFolders.add(sourceFolder);
            }
        }

        public boolean isLibrary() {
            return this.fIsLibrary;
        }

        public ArrayList getSourceFolders() {
            return this.fSourceFolders;
        }
    }

    class ProjectFolder {
        IPath fPath;
        String fToken;
        ArrayList fLibs = new ArrayList(1);
        String dupeLibName = null;

        public ProjectFolder(IPath path) {
            this.fPath = path;
        }

        public IPath getPath() {
            return this.fPath;
        }

        void setToken(String token) {
            this.fToken = token;
        }

        public String getToken() {
            if (this.fToken == null) {
                return this.fPath.toString();
            }
            return this.fToken;
        }

        public void addLib(String libName) {
            if (this.fLibs.contains(libName)) {
                this.dupeLibName = libName;
            } else {
                this.fLibs.add(libName);
            }
        }

        public ArrayList getLibs() {
            return this.fLibs;
        }

        public String getDupeLibName() {
            return this.dupeLibName;
        }
    }

    class SourceFolder
    extends ProjectFolder {
        OutputFolder fOutputFolder;

        public SourceFolder(IPath path, OutputFolder outputFolder) {
            super(path);
            this.fOutputFolder = outputFolder;
        }

        public OutputFolder getOutputLocation() {
            return this.fOutputFolder;
        }
    }

    class Visitor
    implements IResourceVisitor {
        String[] fLibs = null;

        Visitor(SourceFolder folder) {
            ArrayList list = folder.getLibs();
            this.fLibs = list.toArray(new String[list.size()]);
        }

        public boolean visit(IResource resource) throws CoreException {
            String encoding = null;
            switch (resource.getType()) {
                case 2: {
                    encoding = ((IFolder)resource).getDefaultCharset(false);
                    break;
                }
                case 1: {
                    IFile file = (IFile)resource;
                    if (file.getFileExtension() == null || !file.getFileExtension().equals("java")) break;
                    encoding = file.getCharset(false);
                }
            }
            if (encoding != null) {
                EncodingEntry entry = new EncodingEntry(resource, encoding);
                int i = 0;
                while (i < this.fLibs.length) {
                    String lib = this.fLibs[i];
                    ArrayList<EncodingEntry> encodings = (ArrayList<EncodingEntry>)SourceEntryErrorReporter.this.fCustomEncodings.get(lib);
                    if (encodings == null) {
                        encodings = new ArrayList<EncodingEntry>();
                        SourceEntryErrorReporter.this.fCustomEncodings.put(lib, encodings);
                    }
                    encodings.add(entry);
                    ++i;
                }
            }
            return true;
        }
    }
}

