/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils$IPathComputer
 */
package org.eclipse.pde.internal.build.publisher;

import java.io.File;
import java.util.LinkedHashMap;
import java.util.Set;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;

public class GatheringComputer
implements FileUtils.IPathComputer {
    private static final String PROVIDED_PATH = ":PROVIDED:";
    private final LinkedHashMap<File, String> filesMap = new LinkedHashMap();

    public IPath computePath(File source) {
        String prefix = this.filesMap.get(source);
        Path result = null;
        if (prefix.startsWith(PROVIDED_PATH)) {
            result = new Path(prefix.substring(10));
        } else {
            result = new Path(source.getAbsolutePath());
            Path rootPath = new Path(prefix);
            result = result.removeFirstSegments(rootPath.matchingFirstSegments((IPath)result));
        }
        return result.setDevice(null);
    }

    public void reset() {
    }

    public void addAll(GatheringComputer computer) {
        this.filesMap.putAll(computer.filesMap);
    }

    public void addFiles(String prefix, String[] files) {
        int i = 0;
        while (i < files.length) {
            this.filesMap.put(new File(prefix, files[i]), prefix);
            ++i;
        }
    }

    public void addFile(String prefix, String file) {
        this.filesMap.put(new File(prefix, file), prefix);
    }

    public void addFile(String computedPath, File file) {
        this.filesMap.put(file, PROVIDED_PATH + computedPath);
    }

    public File[] getFiles() {
        Set<File> keys = this.filesMap.keySet();
        return keys.toArray(new File[keys.size()]);
    }

    public int size() {
        return this.filesMap.size();
    }
}

