/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils$IPathComputer
 *  org.eclipse.equinox.internal.p2.engine.Phase
 *  org.eclipse.equinox.internal.p2.engine.PhaseSet
 *  org.eclipse.equinox.internal.p2.engine.phases.Collect
 *  org.eclipse.equinox.internal.p2.engine.phases.Install
 *  org.eclipse.equinox.internal.p2.metadata.TouchpointData
 *  org.eclipse.equinox.internal.p2.metadata.TouchpointInstruction
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.internal.repository.tools.Repo2Runnable
 *  org.eclipse.equinox.p2.internal.repository.tools.tasks.IUDescription
 *  org.eclipse.equinox.p2.internal.repository.tools.tasks.Repo2RunnableTask
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 *  org.eclipse.equinox.p2.metadata.ITouchpointInstruction
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.BrandingIron
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.eclipse.pde.internal.build.Utils
 */
package org.eclipse.pde.internal.build.publisher;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipOutputStream;
import org.apache.tools.ant.BuildException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.engine.Phase;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.internal.p2.engine.phases.Collect;
import org.eclipse.equinox.internal.p2.engine.phases.Install;
import org.eclipse.equinox.internal.p2.metadata.TouchpointData;
import org.eclipse.equinox.internal.p2.metadata.TouchpointInstruction;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.internal.repository.tools.Repo2Runnable;
import org.eclipse.equinox.p2.internal.repository.tools.tasks.IUDescription;
import org.eclipse.equinox.p2.internal.repository.tools.tasks.Repo2RunnableTask;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepositoryManager;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.BrandingIron;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.tasks.Config;
import org.eclipse.pde.internal.build.tasks.TaskMessages;

public class BrandP2Task
extends Repo2RunnableTask {
    private Config config = null;
    private String launcherName = null;
    private String tempFolder = null;
    private String iconsList = null;
    private String launcherProvider = null;
    private String productId = null;
    private String productVersion = Version.emptyVersion.toString();
    private URI metadataURI = null;
    private URI artifactURI = null;
    private boolean removeMetadataRepo = true;
    private boolean removeArtifactRepo = true;
    private List ius = null;
    private static final String CHMOD = "chmod";
    private static final String LN = "ln";
    private static final String LINK_TARGET = "linkTarget";
    private static final String LINK_NAME = "linkName";
    private static final String TARGET_FILE = "targetFile";
    private static final String INSTALL = "install";
    private static final String CONFIGURE = "configure";

    public BrandP2Task() {
        this.application = new Repo2Runnable(){

            protected PhaseSet getPhaseSet() {
                return new PhaseSet(this, new Phase[]{new Collect(100), new Install(100)}){
                    final /* synthetic */ 1 this$1;
                    {
                        this.this$1 = var1_1;
                    }
                };
            }

            protected PhaseSet getNativePhase() {
                return null;
            }
        };
    }

    public void execute() {
        IProvisioningAgent agent;
        if (this.launcherName == null || this.launcherName.startsWith("${") || this.config == null) {
            return;
        }
        if (this.launcherProvider == null || this.launcherProvider.startsWith("${")) {
            this.launcherProvider = "org.eclipse.equinox.executable";
        }
        if ((agent = (IProvisioningAgent)BundleHelper.getDefault().acquireService(IProvisioningAgent.SERVICE_NAME)) == null) {
            throw new BuildException(TaskMessages.error_agentService);
        }
        IMetadataRepositoryManager metadataManager = (IMetadataRepositoryManager)agent.getService(IMetadataRepositoryManager.SERVICE_NAME);
        if (metadataManager == null) {
            throw new BuildException(TaskMessages.error_metadataRepoManagerService);
        }
        IArtifactRepositoryManager artifactManager = (IArtifactRepositoryManager)agent.getService(IArtifactRepositoryManager.SERVICE_NAME);
        if (artifactManager == null) {
            throw new BuildException(TaskMessages.error_artifactRepoManagerService);
        }
        IMetadataRepository metadataRepo = this.loadMetadataRepository(metadataManager);
        IArtifactRepository artifactRepo = this.loadArtifactRepository(artifactManager);
        try {
            try {
                super.setDestination(this.getRootFolder());
                super.execute();
                if (this.ius.size() == 1) {
                    this.callBrandingIron();
                    this.publishBrandedIU(metadataRepo, artifactRepo, (IInstallableUnit)this.ius.get(0));
                    FileUtils.deleteAll((File)new File(this.getRootFolder()));
                }
            }
            catch (BuildException e) {
                this.getProject().log(e.getMessage(), 1);
                this.cleanupRepositories(metadataManager, artifactManager);
                this.ius = null;
            }
        }
        finally {
            this.cleanupRepositories(metadataManager, artifactManager);
            this.ius = null;
        }
    }

    private void cleanupRepositories(IMetadataRepositoryManager metadataManager, IArtifactRepositoryManager artifactManager) {
        URI destination = new Path(this.getRootFolder()).toFile().toURI();
        if (metadataManager != null) {
            if (this.removeMetadataRepo) {
                metadataManager.removeRepository(this.metadataURI);
            }
            metadataManager.removeRepository(destination);
        }
        if (artifactManager != null) {
            if (this.removeArtifactRepo) {
                artifactManager.removeRepository(this.artifactURI);
            }
            artifactManager.removeRepository(destination);
        }
    }

    private IArtifactRepository loadArtifactRepository(IArtifactRepositoryManager manager) throws BuildException {
        if (this.artifactURI == null) {
            throw new BuildException(TaskMessages.error_noArtifactRepo);
        }
        this.removeArtifactRepo = !manager.contains(this.artifactURI);
        IArtifactRepository repo = null;
        try {
            repo = manager.loadRepository(this.artifactURI, null);
        }
        catch (ProvisionException provisionException) {
            throw new BuildException(NLS.bind((String)TaskMessages.error_loadRepository, (Object)this.artifactURI.toString()));
        }
        if (!repo.isModifiable()) {
            throw new BuildException(NLS.bind((String)TaskMessages.error_unmodifiableRepository, (Object)this.artifactURI.toString()));
        }
        return repo;
    }

    private IMetadataRepository loadMetadataRepository(IMetadataRepositoryManager manager) throws BuildException {
        if (this.metadataURI == null) {
            throw new BuildException(TaskMessages.error_noMetadataRepo);
        }
        this.removeMetadataRepo = !manager.contains(this.metadataURI);
        IMetadataRepository repo = null;
        try {
            repo = manager.loadRepository(this.metadataURI, null);
        }
        catch (ProvisionException provisionException) {
            throw new BuildException(NLS.bind((String)TaskMessages.error_loadRepository, (Object)this.metadataURI.toString()));
        }
        if (!repo.isModifiable()) {
            throw new BuildException(NLS.bind((String)TaskMessages.error_unmodifiableRepository, (Object)this.metadataURI.toString()));
        }
        return repo;
    }

    protected String getProviderIUName() {
        return String.valueOf(this.launcherProvider) + "_root." + this.getConfigString();
    }

    protected List prepareIUs() {
        String iuName = this.getProviderIUName();
        IUDescription task = (IUDescription)super.createIu();
        task.setId(iuName);
        this.ius = super.prepareIUs();
        return this.ius;
    }

    protected void callBrandingIron() {
        if (!new File(this.getRootFolder()).exists()) {
            return;
        }
        BrandingIron iron = new BrandingIron();
        iron.setName(this.launcherName);
        iron.setIcons(this.iconsList);
        iron.setRoot(this.getRootFolder());
        iron.setOS(this.config.getOs());
        try {
            iron.brand();
        }
        catch (Exception e) {
            this.getProject().log(TaskMessages.error_branding, (Throwable)e, 1);
        }
    }

    protected String getRootFolder() {
        return String.valueOf(this.tempFolder) + "/p2.branding/" + this.getProviderIUName();
    }

    private String getConfigString() {
        return String.valueOf(this.config.getWs()) + '.' + this.config.getOs() + '.' + this.config.getArch();
    }

    protected void publishBrandedIU(IMetadataRepository metadataRepo, IArtifactRepository artifactRepo, IInstallableUnit originalIU) {
        String id = String.valueOf(this.productId) + "_root." + this.getConfigString();
        Version version = Version.parseVersion((String)this.productVersion);
        if (version.equals(Version.emptyVersion)) {
            version = originalIU.getVersion();
        }
        MetadataFactory.InstallableUnitDescription newIUDescription = new MetadataFactory.InstallableUnitDescription();
        newIUDescription.setSingleton(originalIU.isSingleton());
        newIUDescription.setId(id);
        newIUDescription.setVersion(version);
        newIUDescription.setCapabilities(new IProvidedCapability[]{PublisherHelper.createSelfCapability((String)id, (Version)version)});
        newIUDescription.setTouchpointType(originalIU.getTouchpointType());
        newIUDescription.setFilter(originalIU.getFilter());
        List data = this.brandTouchpointData(originalIU.getTouchpointData());
        int i = 0;
        while (i < data.size()) {
            newIUDescription.addTouchpointData((ITouchpointData)data.get(i));
            ++i;
        }
        IArtifactKey key = artifactRepo.createArtifactKey("binary", newIUDescription.getId(), newIUDescription.getVersion());
        newIUDescription.setArtifacts(new IArtifactKey[]{key});
        IInstallableUnit newIU = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)newIUDescription);
        metadataRepo.addInstallableUnits(Arrays.asList(newIU));
        ArtifactDescriptor descriptor = new ArtifactDescriptor(key);
        ZipOutputStream output = null;
        try {
            try {
                output = new ZipOutputStream(artifactRepo.getOutputStream((IArtifactDescriptor)descriptor));
                File root = new File(this.getRootFolder());
                new File(root, "content.xml").delete();
                new File(root, "artifacts.xml").delete();
                new File(root, "content.jar").delete();
                new File(root, "artifacts.jar").delete();
                FileUtils.zip((ZipOutputStream)output, (File)root, (Set)Collections.EMPTY_SET, (FileUtils.IPathComputer)FileUtils.createRootPathComputer((File)root));
            }
            catch (ProvisionException e) {
                throw new BuildException(e.getMessage(), (Throwable)e);
            }
            catch (IOException e) {
                throw new BuildException(e.getMessage(), (Throwable)e);
            }
        }
        catch (Throwable throwable) {
            Utils.close(output);
            throw throwable;
        }
        Utils.close((Object)output);
    }

    private List brandTouchpointData(Collection data) {
        HashMap<String, TouchpointInstruction> instructions;
        ArrayList<TouchpointData> results = new ArrayList<TouchpointData>(data.size() + 1);
        results.addAll(data);
        boolean haveChmod = false;
        String brandedLauncher = null;
        brandedLauncher = this.config.getOs().equals("win32") ? String.valueOf(this.launcherName) + ".exe" : (this.config.getOs().equals("macosx") ? String.valueOf(this.launcherName) + ".app/Contents/MacOS/" + this.launcherName : this.launcherName);
        int i = 0;
        while (i < results.size()) {
            ITouchpointData td = (ITouchpointData)results.get(i);
            instructions = new HashMap<String, TouchpointInstruction>(td.getInstructions());
            String[] phases = new String[]{INSTALL, CONFIGURE};
            int phase = 0;
            while (phase < phases.length) {
                ITouchpointInstruction instruction = td.getInstruction(phases[phase]);
                if (instruction != null) {
                    boolean phaseChanged = false;
                    String[] actions = Utils.getArrayFromString((String)instruction.getBody(), (String)";");
                    int j = 0;
                    while (j < actions.length) {
                        String linkTarget;
                        Map map;
                        if (actions[j].startsWith(CHMOD)) {
                            map = this.parseAction(actions[j]);
                            String targetFile = (String)map.get(TARGET_FILE);
                            if ((targetFile = targetFile.replace('\\', '/')).equals(brandedLauncher)) {
                                haveChmod = true;
                            } else if (this.config.getOs().equals("macosx") && (targetFile.endsWith(".app/Contents/MacOS/launcher") || targetFile.endsWith(".app/Contents/MacOS/eclipse")) || this.config.getOs().equals("win32") && (targetFile.equals("launcher.exe") || targetFile.equals("eclipse.exe")) || targetFile.equals("launcher") || targetFile.equals("eclipse")) {
                                map.put(TARGET_FILE, brandedLauncher);
                                actions[j] = CHMOD + this.toString(map);
                                haveChmod = true;
                                phaseChanged = true;
                                break;
                            }
                        } else if (actions[j].startsWith(LN) && this.config.getOs().equals("macosx") && ((linkTarget = (String)(map = this.parseAction(actions[j])).get(LINK_TARGET)).endsWith(".app/Contents/MacOS/launcher") || linkTarget.endsWith(".app/Contents/MacOS/eclipse"))) {
                            map.put(LINK_TARGET, brandedLauncher);
                            map.put(LINK_NAME, this.launcherName);
                            actions[j] = LN + this.toString(map);
                            phaseChanged = true;
                        }
                        ++j;
                    }
                    if (phaseChanged) {
                        TouchpointInstruction newInstruction = new TouchpointInstruction(this.toString(actions, ";"), instruction.getImportAttribute());
                        instructions.put(phases[phase], newInstruction);
                    }
                }
                ++phase;
            }
            results.set(i, new TouchpointData(instructions));
            ++i;
        }
        if (!haveChmod && !this.config.getOs().equals("win32")) {
            String body = "chmod(targetDir:${installFolder}, targetFile:" + brandedLauncher + ", permissions:755)";
            TouchpointInstruction newInstruction = new TouchpointInstruction(body, null);
            instructions = new HashMap();
            instructions.put(INSTALL, newInstruction);
            results.add(new TouchpointData(instructions));
        }
        return results;
    }

    private String toString(String[] elements, String separator) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < elements.length) {
            buffer.append(elements[i]);
            if (i < elements.length - 1) {
                buffer.append(separator);
            }
            ++i;
        }
        return buffer.toString();
    }

    private String toString(Map map) {
        StringBuffer buffer = new StringBuffer();
        buffer.append('(');
        Iterator iterator = map.keySet().iterator();
        while (iterator.hasNext()) {
            String key = (String)iterator.next();
            buffer.append(key);
            buffer.append(':');
            buffer.append(map.get(key));
            if (!iterator.hasNext()) continue;
            buffer.append(',');
        }
        buffer.append(')');
        return buffer.toString();
    }

    private Map parseAction(String action) {
        HashMap<String, String> result = new HashMap<String, String>();
        int open = action.indexOf(40);
        int close = action.lastIndexOf(41);
        String parameterString = action.substring(open + 1, close);
        String[] parameters = Utils.getArrayFromString((String)parameterString, (String)",");
        int i = 0;
        while (i < parameters.length) {
            int colon = parameters[i].indexOf(58);
            result.put(parameters[i].substring(0, colon).trim(), parameters[i].substring(colon + 1).trim());
            ++i;
        }
        return result;
    }

    public void setConfig(String config) {
        if (config == null || config.startsWith("${")) {
            return;
        }
        String[] elements = Utils.getArrayFromStringWithBlank((String)config, (String)".");
        if (elements.length != 3) {
            throw new BuildException(NLS.bind((String)TaskMessages.error_invalidConfig, (Object)config));
        }
        this.config = new Config(elements);
    }

    public void setLauncherName(String launcherName) {
        this.launcherName = launcherName;
    }

    public void setLauncherProvider(String launcherProvider) {
        this.launcherProvider = launcherProvider;
    }

    public void setIconsList(String iconsList) {
        this.iconsList = iconsList;
    }

    public void setTempDirectory(String temp) {
        this.tempFolder = temp;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public void setProductVersion(String productVersion) {
        if (productVersion != null && !productVersion.startsWith("${")) {
            this.productVersion = productVersion;
        }
    }

    public void setRepository(String location) {
        this.setMetadataRepository(location);
        this.setArtifactRepository(location);
    }

    public void setMetadataRepository(String location) {
        try {
            this.metadataURI = URIUtil.fromString((String)location);
            super.addMetadataSourceRepository(this.metadataURI, false);
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException("Metadata repository location (" + location + ") must be a URI.");
        }
    }

    public void setArtifactRepository(String location) {
        try {
            this.artifactURI = URIUtil.fromString((String)location);
            super.addArtifactSourceRepository(this.artifactURI, false);
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException("Artifact repository location (" + location + ") must be a URI.");
        }
    }
}

