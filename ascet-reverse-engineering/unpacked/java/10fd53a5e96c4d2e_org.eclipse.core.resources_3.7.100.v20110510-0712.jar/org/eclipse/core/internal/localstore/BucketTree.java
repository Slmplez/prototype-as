/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.localstore;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.eclipse.core.internal.localstore.Bucket;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.osgi.util.NLS;

public class BucketTree {
    public static final int DEPTH_INFINITE = Integer.MAX_VALUE;
    public static final int DEPTH_ONE = 1;
    public static final int DEPTH_ZERO = 0;
    private static final int SEGMENT_QUOTA = 256;
    private static final char[][] HEX_STRINGS = new char[256][];
    protected Bucket current;
    private Workspace workspace;

    static {
        int i = 0;
        while (i < HEX_STRINGS.length) {
            BucketTree.HEX_STRINGS[i] = Integer.toHexString(i).toCharArray();
            ++i;
        }
    }

    public BucketTree(Workspace workspace, Bucket bucket) {
        this.current = bucket;
        this.workspace = workspace;
    }

    public void accept(Bucket.Visitor visitor, IPath base, int depth) throws CoreException {
        if (Path.ROOT.equals((Object)base)) {
            this.current.load(null, this.locationFor((IPath)Path.ROOT));
            if (this.current.accept(visitor, base, 0) != 0) {
                return;
            }
            if (depth == 0) {
                return;
            }
            boolean keepVisiting = true;
            --depth;
            IProject[] projects = this.workspace.getRoot().getProjects(8);
            int i = 0;
            while (keepVisiting && i < projects.length) {
                IPath projectPath = projects[i].getFullPath();
                keepVisiting = this.internalAccept(visitor, projectPath, this.locationFor(projectPath), depth, 1);
                ++i;
            }
        } else {
            this.internalAccept(visitor, base, this.locationFor(base), depth, 0);
        }
    }

    public void close() throws CoreException {
        this.current.save();
        this.saveVersion();
    }

    public Bucket getCurrent() {
        return this.current;
    }

    public File getVersionFile() {
        return new File(this.locationFor((IPath)Path.ROOT), this.current.getVersionFileName());
    }

    private boolean internalAccept(Bucket.Visitor visitor, IPath base, File bucketDir, int depthRequested, int currentDepth) throws CoreException {
        this.current.load(base.segment(0), bucketDir);
        int outcome = this.current.accept(visitor, base, depthRequested);
        if (outcome != 0) {
            return outcome == 2;
        }
        if (depthRequested <= currentDepth) {
            return true;
        }
        File[] subDirs = bucketDir.listFiles();
        if (subDirs == null) {
            return true;
        }
        int i = 0;
        while (i < subDirs.length) {
            if (subDirs[i].isDirectory() && !this.internalAccept(visitor, base, subDirs[i], depthRequested, currentDepth + 1)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void loadBucketFor(IPath path) throws CoreException {
        this.current.load(Path.ROOT.equals((Object)path) ? null : path.segment(0), this.locationFor(path));
    }

    private File locationFor(IPath resourcePath) {
        IPath baseLocation = this.workspace.getMetaArea().locationFor(resourcePath).removeTrailingSeparator();
        int segmentCount = resourcePath.segmentCount();
        String locationString = baseLocation.toOSString();
        StringBuffer locationBuffer = new StringBuffer(locationString.length() + ".indexes".length() + 16);
        locationBuffer.append(locationString);
        locationBuffer.append(File.separatorChar);
        locationBuffer.append(".indexes");
        int i = 1;
        while (i < segmentCount - 1) {
            locationBuffer.append(File.separatorChar);
            locationBuffer.append(this.translateSegment(resourcePath.segment(i)));
            ++i;
        }
        return new File(locationBuffer.toString());
    }

    private void saveVersion() throws CoreException {
        File versionFile = this.getVersionFile();
        if (!versionFile.getParentFile().exists()) {
            versionFile.getParentFile().mkdirs();
        }
        FileOutputStream stream = null;
        try {
            try {
                stream = new FileOutputStream(versionFile);
                stream.write(this.current.getVersion());
                stream.close();
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.resources_writeWorkspaceMeta, (Object)versionFile.getAbsolutePath());
                throw new ResourceException(568, null, message, e);
            }
        }
        catch (Throwable throwable) {
            FileUtil.safeClose(stream);
            throw throwable;
        }
        FileUtil.safeClose(stream);
    }

    private char[] translateSegment(String segment) {
        return HEX_STRINGS[Math.abs(segment.hashCode()) % 256];
    }
}

