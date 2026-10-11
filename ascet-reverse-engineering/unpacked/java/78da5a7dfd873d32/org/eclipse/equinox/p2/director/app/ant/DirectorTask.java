/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.internal.p2.director.app.DirectorApplication
 *  org.eclipse.equinox.internal.p2.director.app.ILog
 *  org.eclipse.equinox.internal.p2.director.app.Messages
 *  org.eclipse.equinox.p2.metadata.VersionedId
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.p2.director.app.ant;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.internal.p2.director.app.DirectorApplication;
import org.eclipse.equinox.internal.p2.director.app.ILog;
import org.eclipse.equinox.internal.p2.director.app.Messages;
import org.eclipse.equinox.p2.metadata.VersionedId;
import org.eclipse.osgi.util.NLS;

public class DirectorTask
extends Task
implements ILog {
    private static final String ANT_PREFIX = "${";
    private static final String ENTRY = "!ENTRY ";
    private static final String SUBENTRY = "!SUBENTRY ";
    private static final String logEntry = "{0} {1} {2}\n";
    private static final String MESSAGE = "!MESSAGE ";
    private boolean roaming;
    private boolean list;
    private String profile;
    private String flavor;
    private String os;
    private String ws;
    private String nl;
    private String arch;
    private String uninstallIU;
    private String extraArguments;
    private File destination;
    private File bundlePool;
    private File agentLocation;
    private URI metadataRepository;
    private URI artifactRepository;
    private List<IUDescription> ius = new ArrayList<IUDescription>();
    private String outputProperty;
    private StringBuffer outputBuffer = null;
    private File logFile = null;

    public void execute() throws BuildException {
        Object result = null;
        try {
            try {
                if (this.outputProperty != null) {
                    this.outputBuffer = new StringBuffer();
                }
                DirectorApplication application = new DirectorApplication();
                application.setLog((ILog)this);
                result = application.run(this.getArguments());
            }
            catch (Exception e) {
                this.getProject().log(Messages.problem_CallingDirector, (Throwable)e, 0);
                throw new BuildException(Messages.problem_CallingDirector, (Throwable)e);
            }
        }
        finally {
            this.log(this.outputBuffer);
        }
        if (result != null && !result.equals(IApplication.EXIT_OK)) {
            this.getProject().log(Messages.problem_CallingDirector, 0);
            throw new BuildException(Messages.problem_CallingDirector);
        }
    }

    public void addConfiguredIu(IUDescription iu) {
        this.ius.add(iu);
    }

    private String[] getArguments() {
        ArrayList<String> result = new ArrayList<String>();
        if (this.roaming) {
            result.add("-roaming");
        }
        if (this.profile != null) {
            result.add("-profile");
            result.add(this.profile);
        }
        if (this.extraArguments != null) {
            StringTokenizer tokenizer = new StringTokenizer(this.extraArguments);
            while (tokenizer.hasMoreTokens()) {
                result.add(tokenizer.nextToken());
            }
        }
        if (this.destination != null) {
            result.add("-destination");
            result.add(this.destination.getAbsolutePath());
        }
        if (this.bundlePool != null) {
            result.add("-bundlePool");
            result.add(this.bundlePool.getAbsolutePath());
        }
        if (this.agentLocation != null) {
            result.add("-shared");
            result.add(this.agentLocation.getAbsolutePath());
        }
        if (this.metadataRepository != null) {
            result.add("-metadataRepository");
            result.add(URIUtil.toUnencodedString((URI)this.metadataRepository));
        }
        if (this.artifactRepository != null) {
            result.add("-artifactRepository");
            result.add(URIUtil.toUnencodedString((URI)this.artifactRepository));
        }
        if (this.flavor != null) {
            result.add("-flavor");
            result.add(this.flavor);
        }
        if (this.ius.size() > 0) {
            result.add("-installIUs");
            StringBuffer arg = new StringBuffer();
            Iterator<IUDescription> iterator = this.ius.iterator();
            while (iterator.hasNext()) {
                IUDescription object = iterator.next();
                arg.append(object.getVersionedId().toString());
                if (!iterator.hasNext()) continue;
                arg.append(',');
            }
            result.add(arg.toString());
        }
        if (this.os != null) {
            result.add("-p2.os");
            result.add(this.os);
        }
        if (this.ws != null) {
            result.add("-p2.ws");
            result.add(this.ws);
        }
        if (this.arch != null) {
            result.add("-p2.arch");
            result.add(this.arch);
        }
        if (this.nl != null) {
            result.add("-p2.nl");
            result.add(this.nl);
        }
        if (this.list) {
            result.add("-list");
        }
        if (this.uninstallIU != null) {
            result.add("-uninstallIU");
            result.add(this.uninstallIU);
        }
        return result.toArray(new String[result.size()]);
    }

    public void setArch(String value) {
        this.arch = value;
    }

    public void setArtifactRepository(String value) {
        try {
            this.artifactRepository = URIUtil.fromString((String)value);
        }
        catch (URISyntaxException e) {
            this.log(NLS.bind((String)Messages.problem_repoMustBeURI, (Object)value), e, 0);
        }
    }

    public void setBundlePool(String value) {
        this.bundlePool = new File(value);
    }

    public void setDestination(String value) {
        this.destination = new File(value);
    }

    public void setFlavor(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.flavor = value;
        }
    }

    public void setList(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.list = Boolean.valueOf(value);
        }
    }

    public void setMetadataRepository(String value) {
        try {
            this.metadataRepository = URIUtil.fromString((String)value);
        }
        catch (URISyntaxException e) {
            this.log(NLS.bind((String)Messages.problem_repoMustBeURI, (Object)value), e, 0);
        }
    }

    public void setNl(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.nl = value;
        }
    }

    public void setOs(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.os = value;
        }
    }

    public void setProfile(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.profile = value;
        }
    }

    public void setExtraArguments(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.extraArguments = value;
        }
    }

    public void setRoaming(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.roaming = Boolean.valueOf(value);
        }
    }

    public void setUninstallIU(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.uninstallIU = value;
        }
    }

    public void setWs(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.ws = value;
        }
    }

    public void setAgentLocation(String value) {
        if (value != null && value.length() > 0 && !value.startsWith(ANT_PREFIX)) {
            this.agentLocation = new File(value);
        }
    }

    public void log(String msg) {
        if (this.outputBuffer != null) {
            this.outputBuffer.append(msg);
            if (!msg.endsWith("\n")) {
                this.outputBuffer.append('\n');
            }
        }
        super.log(msg, 2);
    }

    public void log(IStatus status) {
        this.log(0, status);
        if (status.isMultiStatus()) {
            IStatus[] children = status.getChildren();
            int i = 0;
            while (i < children.length) {
                this.log(1, children[i]);
                ++i;
            }
        }
    }

    private void log(int depth, IStatus status) {
        this.log(status.getMessage(), status.getException(), 0);
        if (this.outputBuffer != null) {
            if (depth == 0) {
                this.outputBuffer.append(ENTRY);
            } else {
                this.outputBuffer.append(SUBENTRY);
            }
            this.outputBuffer.append(NLS.bind((String)logEntry, (Object[])new String[]{status.getPlugin(), Integer.toString(status.getSeverity()), Integer.toString(status.getCode())}));
            this.outputBuffer.append(MESSAGE);
            this.outputBuffer.append(status.getMessage());
            this.outputBuffer.append('\n');
        }
    }

    private void log(StringBuffer buffer) {
        block17: {
            if (this.outputBuffer == null) {
                return;
            }
            String logString = this.outputBuffer.toString();
            this.getProject().setNewProperty(this.outputProperty, logString);
            if (this.logFile != null) {
                File parentFile = this.logFile.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                FileWriter writer = null;
                try {
                    try {
                        writer = new FileWriter(this.logFile);
                        writer.write(logString);
                    }
                    catch (IOException e) {
                        this.getProject().log(NLS.bind((String)Messages.unableToWriteLogFile, (Object)this.logFile.getAbsolutePath()), (Throwable)e, 1);
                        if (writer != null) {
                            try {
                                writer.close();
                            }
                            catch (IOException iOException) {}
                        }
                        break block17;
                    }
                }
                catch (Throwable throwable) {
                    if (writer != null) {
                        try {
                            writer.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (writer != null) {
                    try {
                        writer.close();
                    }
                    catch (IOException iOException) {}
                }
            }
        }
    }

    public void setOutputProperty(String property) {
        this.outputProperty = property;
    }

    public void setLogFile(String file) {
        if (file != null && !file.startsWith(ANT_PREFIX)) {
            this.logFile = new File(file);
            if (!this.logFile.isAbsolute()) {
                this.logFile = new File(this.getProject().getBaseDir(), file);
            }
        }
    }

    public void close() {
    }

    public static class IUDescription {
        private String id = null;
        private String version = null;

        public VersionedId getVersionedId() {
            return new VersionedId(this.id, this.version);
        }

        public void setId(String id) {
            this.id = id;
        }

        public void setVersion(String version) {
            if (version.length() > 0 && !version.startsWith(DirectorTask.ANT_PREFIX)) {
                this.version = version;
            }
        }
    }
}

