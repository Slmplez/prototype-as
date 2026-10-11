/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.fetch;

import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.build.IAntScript;
import org.eclipse.pde.build.IFetchFactory;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;

public class COPYFetchTasksFactory
implements IFetchFactory,
IPDEBuildConstants {
    public static final String ID = "COPY";
    private static final String SEPARATOR = ",";
    private static final String OVERRIDE_TAG = "COPY";
    private static final String KEY_PATH = "path";
    private static final String KEY_ROOT = "root";

    public void generateRetrieveElementCall(Map entryInfos, IPath destination, IAntScript script) {
        String element = (String)entryInfos.get("element");
        String root = (String)entryInfos.get(KEY_ROOT);
        String path = (String)entryInfos.get(KEY_PATH);
        Path sourcePath = new Path(root);
        sourcePath = path != null ? sourcePath.append(path) : sourcePath.append(element);
        this.printCopyTask(null, destination.toString(), new String[]{sourcePath.toString()}, false, true, script);
    }

    public void generateRetrieveFilesCall(Map entryInfos, IPath destination, String[] files, IAntScript script) {
        String root = (String)entryInfos.get(KEY_ROOT);
        String path = (String)entryInfos.get(KEY_PATH);
        int i = 0;
        while (i < files.length) {
            String file = files[i];
            Path filePath = new Path(root);
            filePath = path != null ? filePath.append(path).append(file) : filePath.append((String)entryInfos.get("element")).append(file);
            this.printCopyTask(filePath.toString(), destination.toString(), null, true, true, script);
            ++i;
        }
    }

    public void addTargets(IAntScript script) {
    }

    public void parseMapFileEntry(String repoSpecificentry, Properties overrideTags, Map entryInfos) throws CoreException {
        String[] arguments = Utils.getArrayFromStringWithBlank(repoSpecificentry, SEPARATOR);
        if (arguments.length < 1) {
            String message = NLS.bind((String)Messages.error_incorrectDirectoryEntry, entryInfos.get("element"));
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 9, message, null));
        }
        String overrideTag = overrideTags != null ? overrideTags.getProperty("COPY") : null;
        entryInfos.put(KEY_ROOT, overrideTag == null || overrideTag.trim().length() == 0 ? arguments[0] : overrideTag);
        entryInfos.put(KEY_PATH, arguments.length > 1 && arguments[1].trim().length() > 0 ? arguments[1] : null);
    }

    private void printCopyTask(String file, String todir, String[] dirs, boolean failOnError, boolean overwrite, IAntScript script) {
        script.printTabs();
        script.print("<copy");
        script.printAttribute("file", file, false);
        script.printAttribute("todir", todir, false);
        script.printAttribute("failonerror", failOnError ? "true" : "false", true);
        script.printAttribute("overwrite", overwrite ? "true" : "false", true);
        if (dirs == null) {
            script.println("/>");
        } else {
            script.println(">");
            int i = 0;
            while (i < dirs.length) {
                script.printTabs();
                script.print("\t<fileset");
                script.printAttribute("dir", dirs[i], true);
                script.println("/>");
                ++i;
            }
            script.println("</copy>");
        }
    }
}

