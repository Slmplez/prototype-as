/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.BuildScriptGenerator
 */
package org.eclipse.pde.internal.core.exports;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.build.BuildScriptGenerator;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.exports.FeatureExportInfo;
import org.eclipse.pde.internal.core.exports.FeatureExportOperation;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.iproduct.IJREInfo;
import org.eclipse.pde.internal.core.iproduct.ILauncherInfo;
import org.eclipse.pde.internal.core.iproduct.IProduct;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.w3c.dom.Element;

public class ProductExportOperation
extends FeatureExportOperation {
    private static final String STATUS_MESSAGE = "!MESSAGE";
    private static final String STATUS_ENTRY = "!ENTRY";
    private static final String STATUS_SUBENTRY = "!SUBENTRY";
    private static final String ECLIPSE_APP_MACOS = "Eclipse.app/Contents/MacOS";
    private static final String ECLIPSE_APP_CONTENTS = "Eclipse.app/Contents";
    private static final String MAC_JAVA_FRAMEWORK = "/System/Library/Frameworks/JavaVM.framework";
    private String fFeatureLocation;
    private String fRoot;
    private IProduct fProduct;
    protected static String errorMessage;

    public static void setErrorMessage(String message) {
        errorMessage = message;
    }

    public static String getErrorMessage() {
        return errorMessage;
    }

    public static IStatus parseErrorMessage(CoreException e) {
        if (errorMessage == null) {
            return null;
        }
        MultiStatus status = null;
        StringTokenizer tokenizer = new StringTokenizer(errorMessage, "\n");
        while (tokenizer.hasMoreTokens()) {
            String next;
            String line = tokenizer.nextToken().trim();
            if (line.startsWith(STATUS_ENTRY) && tokenizer.hasMoreElements()) {
                next = tokenizer.nextToken();
                if (!next.startsWith(STATUS_MESSAGE)) continue;
                status = new MultiStatus("org.eclipse.pde.core", 0, next.substring(8), null);
                continue;
            }
            if (!line.startsWith(STATUS_SUBENTRY) || !tokenizer.hasMoreElements() || status == null || !(next = tokenizer.nextToken()).startsWith(STATUS_MESSAGE)) continue;
            status.add((IStatus)new Status(4, "org.eclipse.pde.core", next.substring(8)));
        }
        if (status != null) {
            return status;
        }
        return new MultiStatus("org.eclipse.pde.core", 0, new IStatus[]{e.getStatus()}, errorMessage, null);
    }

    public ProductExportOperation(FeatureExportInfo info, String name, IProduct product, String root) {
        super(info, name);
        this.fProduct = product;
        this.fRoot = root;
    }

    /*
     * Exception decompiling
     */
    protected IStatus run(IProgressMonitor monitor) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [29[DOLOOP]], but top level block is 30[UNCONDITIONALDOLOOP]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    protected boolean groupedConfigurations() {
        return false;
    }

    private void cleanupBuildRepo() {
        File metadataTemp = new File(this.fBuildTempMetadataLocation);
        if (metadataTemp.exists()) {
            this.deleteDir(metadataTemp);
        }
    }

    protected String[] getPaths() {
        String[] paths = super.getPaths();
        String[] all = new String[paths.length + 1];
        all[0] = String.valueOf(this.fFeatureLocation) + File.separator + "feature.xml";
        System.arraycopy(paths, 0, all, 1, paths.length);
        return all;
    }

    private void createBuildPropertiesFile(String featureLocation, String[][] configurations) {
        File file = new File(featureLocation);
        if (!file.exists() || !file.isDirectory()) {
            file.mkdirs();
        }
        boolean hasLaunchers = PDECore.getDefault().getFeatureModelManager().getDeltaPackFeature() != null;
        Properties properties = new Properties();
        if (this.fProduct.includeLaunchers() && !hasLaunchers && configurations.length > 0) {
            String rootPrefix = "root." + configurations[0][0] + "." + configurations[0][1] + "." + configurations[0][2];
            properties.put(rootPrefix, this.getRootFileLocations(hasLaunchers));
            if (TargetPlatform.getOS().equals("macosx")) {
                String plist = this.createMacInfoPList();
                if (plist != null) {
                    properties.put(String.valueOf(rootPrefix) + ".folder." + ECLIPSE_APP_CONTENTS, "absolute:file:" + plist);
                }
                properties.put(String.valueOf(rootPrefix) + ".folder." + ECLIPSE_APP_MACOS, this.getLauncherLocations(hasLaunchers));
                properties.put(String.valueOf(rootPrefix) + ".permissions.755", "Eclipse.app/Contents/MacOS/" + this.getLauncherName());
            } else {
                properties.put(rootPrefix, this.getLauncherLocations(hasLaunchers));
                properties.put(String.valueOf(rootPrefix) + ".permissions.755", this.getLauncherName());
                if (TargetPlatform.getWS().equals("motif") && TargetPlatform.getOS().equals("linux")) {
                    properties.put(String.valueOf(rootPrefix) + ".permissions.755", "libXm.so.2");
                }
            }
        }
        IJREInfo jreInfo = this.fProduct.getJREInfo();
        int i = 0;
        while (i < configurations.length) {
            File vm;
            String[] config = configurations[i];
            File file2 = vm = jreInfo != null ? jreInfo.getJVMLocation(config[0]) : null;
            if (!(vm == null || config[0].equals("macosx") && vm.getPath().startsWith(MAC_JAVA_FRAMEWORK))) {
                String rootPrefix = "root." + config[0] + "." + config[1] + "." + config[2];
                properties.put(String.valueOf(rootPrefix) + ".folder.jre", "absolute:" + vm.getAbsolutePath());
                String perms = (String)properties.get(String.valueOf(rootPrefix) + ".permissions.755");
                if (perms != null) {
                    StringBuffer buffer = new StringBuffer(perms);
                    buffer.append(",");
                    buffer.append("jre/bin/java");
                    properties.put(String.valueOf(rootPrefix) + ".permissions.755", buffer.toString());
                }
            }
            ++i;
        }
        if (this.fInfo.exportSource && this.fInfo.exportSourceBundle) {
            properties.put("individualSourceBundles", "true");
            List<IPluginModelBase> workspacePlugins = Arrays.asList(PluginRegistry.getWorkspaceModels());
            int i2 = 0;
            while (i2 < this.fInfo.items.length) {
                if (this.fInfo.items[i2] instanceof IFeatureModel) {
                    IFeature feature = ((IFeatureModel)this.fInfo.items[i2]).getFeature();
                    properties.put("generate.feature@" + feature.getId().trim() + ".source", feature.getId());
                } else {
                    BundleDescription bundle = null;
                    if (this.fInfo.items[i2] instanceof IPluginModelBase) {
                        bundle = ((IPluginModelBase)this.fInfo.items[i2]).getBundleDescription();
                    }
                    if (bundle == null && this.fInfo.items[i2] instanceof BundleDescription) {
                        bundle = (BundleDescription)this.fInfo.items[i2];
                    }
                    if (bundle != null && workspacePlugins.contains(PluginRegistry.findModel(bundle))) {
                        properties.put("generate.plugin@" + bundle.getSymbolicName().trim() + ".source", bundle.getSymbolicName());
                    }
                }
                ++i2;
            }
        }
        this.save(new File(file, "build.properties"), properties, "Build Configuration");
    }

    protected boolean publishingP2Metadata() {
        return this.fInfo.exportMetadata;
    }

    private String getLauncherLocations(boolean hasLaunchers) {
        File homeDir;
        StringBuffer buffer = new StringBuffer();
        if (!hasLaunchers && (homeDir = new File(TargetPlatform.getLocation())).exists() && homeDir.isDirectory()) {
            File file = null;
            if (System.getProperties().get("eclipse.launcher") != null) {
                String launcherPath = System.getProperties().get("eclipse.launcher").toString();
                file = new File(launcherPath);
            }
            if (file != null && file.exists() && !file.isDirectory()) {
                this.appendAbsolutePath(buffer, file);
            } else if (TargetPlatform.getOS().equals("macosx")) {
                this.appendEclipsePath(buffer, new File(homeDir, ECLIPSE_APP_MACOS));
            } else {
                this.appendEclipsePath(buffer, homeDir);
            }
        }
        return buffer.toString();
    }

    private String getRootFileLocations(boolean hasLaunchers) {
        File homeDir;
        StringBuffer buffer = new StringBuffer();
        if (!hasLaunchers && (homeDir = new File(TargetPlatform.getLocation())).exists() && homeDir.isDirectory()) {
            File file = new File(homeDir, "startup.jar");
            if (file.exists()) {
                this.appendAbsolutePath(buffer, file);
            }
            if ((file = new File(homeDir, "libXm.so.2")).exists()) {
                this.appendAbsolutePath(buffer, file);
            }
        }
        return buffer.toString();
    }

    private void appendEclipsePath(StringBuffer buffer, File homeDir) {
        File file = null;
        file = new File(homeDir, "eclipse");
        if (file.exists()) {
            this.appendAbsolutePath(buffer, file);
        }
        if ((file = new File(homeDir, "eclipse.exe")).exists()) {
            this.appendAbsolutePath(buffer, file);
        }
    }

    private void appendAbsolutePath(StringBuffer buffer, File file) {
        if (buffer.length() > 0) {
            buffer.append(",");
        }
        buffer.append("absolute:file:");
        buffer.append(file.getAbsolutePath());
    }

    protected HashMap createAntBuildProperties(String[][] configs) {
        HashMap properties = super.createAntBuildProperties(configs);
        properties.put("launcherName", this.getLauncherName());
        ILauncherInfo info = this.fProduct.getLauncherInfo();
        if (info != null) {
            String icons = "";
            int i = 0;
            while (i < configs.length) {
                String images = null;
                if (configs[i][0].equals("win32")) {
                    images = this.getWin32Images(info);
                } else if (configs[i][0].equals("solaris")) {
                    images = this.getSolarisImages(info);
                } else if (configs[i][0].equals("linux")) {
                    images = this.getExpandedPath(info.getIconPath("linuxIcon"));
                } else if (configs[i][0].equals("macosx")) {
                    images = this.getExpandedPath(info.getIconPath("macosxIcon"));
                }
                if (images != null) {
                    if (icons.length() > 0) {
                        icons = String.valueOf(icons) + ",";
                    }
                    icons = String.valueOf(icons) + images;
                }
                ++i;
            }
            if (icons != null && icons.length() > 0) {
                properties.put("launcherIcons", icons);
            }
        }
        this.fAntBuildProperties.put("collectingFolder", this.fRoot);
        this.fAntBuildProperties.put("archivePrefix", this.fRoot);
        return properties;
    }

    protected void setP2MetaDataProperties(Map map) {
        if (this.fInfo.exportMetadata) {
            if (PDECore.getDefault().getFeatureModelManager().getDeltaPackFeature() == null) {
                map.put("launcherProvider", "org.eclipse.pde.container.feature");
            }
            map.put("generate.p2.metadata", "true");
            map.put("p2.flavor", "tooling");
            map.put("p2.publish.artifacts", "true");
            map.put("p2.compress", "true");
            map.put("p2.gathering", Boolean.toString(this.publishingP2Metadata()));
            try {
                map.put("p2.build.repo", new File(this.fBuildTempMetadataLocation).toURL().toString());
                map.put("p2.metadata.repo", new File(String.valueOf(this.fInfo.destinationDirectory) + "/repository").toURL().toString());
                map.put("p2.artifact.repo", new File(String.valueOf(this.fInfo.destinationDirectory) + "/repository").toURL().toString());
                map.put("p2.metadata.repo.name", NLS.bind((String)PDECoreMessages.ProductExportOperation_0, (Object)this.fProduct.getProductId()));
                map.put("p2.artifact.repo.name", NLS.bind((String)PDECoreMessages.ProductExportOperation_0, (Object)this.fProduct.getProductId()));
            }
            catch (MalformedURLException e) {
                PDECore.log(e);
            }
        }
    }

    private String getLauncherName() {
        String name;
        ILauncherInfo info = this.fProduct.getLauncherInfo();
        if (info != null && (name = info.getLauncherName()) != null && name.length() > 0) {
            if ((name = name.trim()).endsWith(".exe")) {
                name = name.substring(0, name.length() - 4);
            }
            return name;
        }
        return "eclipse";
    }

    private String getWin32Images(ILauncherInfo info) {
        StringBuffer buffer = new StringBuffer();
        if (info.usesWinIcoFile()) {
            this.append(buffer, info.getIconPath("icoFile"));
        } else {
            this.append(buffer, info.getIconPath("winSmallLow"));
            this.append(buffer, info.getIconPath("winSmallHigh"));
            this.append(buffer, info.getIconPath("winMediumHigh"));
            this.append(buffer, info.getIconPath("winMediumLow"));
            this.append(buffer, info.getIconPath("winLargeHigh"));
            this.append(buffer, info.getIconPath("winLargeLow"));
        }
        return buffer.length() > 0 ? buffer.toString() : null;
    }

    private String getSolarisImages(ILauncherInfo info) {
        StringBuffer buffer = new StringBuffer();
        this.append(buffer, info.getIconPath("solarisLarge"));
        this.append(buffer, info.getIconPath("solarisMedium"));
        this.append(buffer, info.getIconPath("solarisSmall"));
        this.append(buffer, info.getIconPath("solarisTiny"));
        return buffer.length() > 0 ? buffer.toString() : null;
    }

    private void append(StringBuffer buffer, String path) {
        if ((path = this.getExpandedPath(path)) != null) {
            if (buffer.length() > 0) {
                buffer.append(",");
            }
            buffer.append(path);
        }
    }

    private String getExpandedPath(String path) {
        if (path == null || path.length() == 0) {
            return null;
        }
        IResource resource = PDECore.getWorkspace().getRoot().findMember((IPath)new Path(path));
        if (resource != null) {
            IPath fullPath = resource.getLocation();
            return fullPath == null ? null : fullPath.toOSString();
        }
        return null;
    }

    protected void setupGenerator(BuildScriptGenerator generator, String featureID, String versionId, String[][] configs, String featureLocation) throws CoreException {
        super.setupGenerator(generator, featureID, versionId, configs, featureLocation);
        generator.setGenerateVersionsList(true);
        if (this.fProduct != null) {
            generator.setProduct(this.fProduct.getModel().getInstallLocation());
        }
    }

    /*
     * Loose catch block
     */
    private String createMacInfoPList() {
        String entryName = TargetPlatformHelper.getTargetVersion() >= 3.3 ? "macosx/Info.plist" : "macosx/Info.plist.32";
        URL url = PDECore.getDefault().getBundle().getEntry(entryName);
        if (url == null) {
            return null;
        }
        File plist = null;
        InputStream in = null;
        String location = this.fFeatureLocation;
        in = url.openStream();
        File dir = new File(location, ECLIPSE_APP_CONTENTS);
        dir.mkdirs();
        plist = new File(dir, "Info.plist");
        CoreUtility.readFile(in, plist);
        String string = plist.getAbsolutePath();
        try {
            if (in != null) {
                in.close();
            }
        }
        catch (IOException iOException) {}
        return string;
        catch (IOException iOException) {
            try {}
            catch (Throwable throwable) {
                try {
                    if (in != null) {
                        in.close();
                    }
                }
                catch (IOException iOException2) {}
                throw throwable;
            }
            try {
                if (in != null) {
                    in.close();
                }
            }
            catch (IOException iOException3) {}
        }
        return null;
    }

    protected void setAdditionalAttributes(Element plugin, BundleDescription bundle) {
        plugin.setAttribute("unpack", Boolean.toString(CoreUtility.guessUnpack(bundle)));
    }
}

