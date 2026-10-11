/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.fetch;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.build.IAntScript;
import org.eclipse.pde.build.IFetchFactory;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;

public class P2IUFetchFactory
implements IFetchFactory {
    private static final String ATTRIBUTE_DESTINATION = "destination";
    private static final String ATTRIBUTE_ID = "id";
    private static final String ATTRIBUTE_SOURCE = "source";
    private static final String ATTRIBUTE_VERSION = "version";
    private static final String KEY_REPOSITORY = "repository";
    private static final String KEY_ID = "id";
    private static final String KEY_VERSION = "version";
    private static final String SEPARATOR = ",";
    private static final String TASK_IU = "iu";
    private static final String TASK_REPO2RUNNABLE = "p2.repo2runnable";
    private static final String TARGET_GET_IUS_FROM_REPO = "FetchIUsFromRepo";
    private final Map iusToFetchBySource = new LinkedHashMap(2);

    private static void throwException(String message, Exception e) throws CoreException {
        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 0, message, (Throwable)e));
    }

    public void addTargets(IAntScript script) {
        script.println();
        script.printTargetDeclaration(TARGET_GET_IUS_FROM_REPO, null, null, null, null);
        LinkedHashMap<String, String> args = new LinkedHashMap<String, String>(2);
        Iterator stream = this.iusToFetchBySource.entrySet().iterator();
        while (stream.hasNext()) {
            Map.Entry entry = stream.next();
            String sourceRepository = (String)entry.getKey();
            List iusToFetch = (List)entry.getValue();
            script.printEchoTask(null, NLS.bind((String)Messages.fetching_p2Repo, (Object[])new String[]{sourceRepository, Utils.getPropertyFormat("transformedRepoLocation")}), "info");
            args.clear();
            args.put(ATTRIBUTE_SOURCE, sourceRepository);
            args.put(ATTRIBUTE_DESTINATION, Utils.getPropertyFormat("transformedRepoLocation"));
            script.printStartTag(TASK_REPO2RUNNABLE, args);
            script.incrementIdent();
            Iterator stream2 = iusToFetch.iterator();
            while (stream2.hasNext()) {
                IUFetchInfo iuFetchInfo = (IUFetchInfo)stream2.next();
                args.clear();
                args.put("id", iuFetchInfo.id);
                args.put("version", iuFetchInfo.version);
                script.printElement(TASK_IU, args);
            }
            script.decrementIdent();
            script.printEndTag(TASK_REPO2RUNNABLE);
            script.println();
        }
        script.printTargetEnd();
        script.println();
        this.iusToFetchBySource.clear();
    }

    public void generateRetrieveElementCall(Map entryInfos, IPath destination, IAntScript script) {
        String sourceRepository;
        if (this.iusToFetchBySource.isEmpty()) {
            script.printAntCallTask(TARGET_GET_IUS_FROM_REPO, true, null);
        }
        if (!this.iusToFetchBySource.containsKey(sourceRepository = (String)entryInfos.get(KEY_REPOSITORY))) {
            this.iusToFetchBySource.put(sourceRepository, new ArrayList());
        }
        IUFetchInfo iuFetchInfo = new IUFetchInfo((String)entryInfos.get("id"), (String)entryInfos.get("version"));
        List iusToFetch = (List)this.iusToFetchBySource.get(sourceRepository);
        if (!iusToFetch.contains(iuFetchInfo)) {
            iusToFetch.add(iuFetchInfo);
        }
    }

    public void generateRetrieveFilesCall(Map entryInfos, IPath destination, String[] files, IAntScript script) {
        HashMap args = new HashMap();
        args.put(ATTRIBUTE_SOURCE, entryInfos.get(KEY_REPOSITORY));
        args.put(ATTRIBUTE_DESTINATION, destination.toOSString());
        script.printStartTag(TASK_REPO2RUNNABLE, args);
        script.incrementIdent();
        args.clear();
        args.put("id", entryInfos.get("id"));
        args.put("version", entryInfos.get("version"));
        script.printElement(TASK_IU, args);
        script.decrementIdent();
        script.printEndTag(TASK_REPO2RUNNABLE);
        script.println();
        args.clear();
        args.put("message", "#empty");
        args.put("file", new File(destination.toFile(), "build.properties").getAbsolutePath());
        script.printElement("echo", args);
        args.clear();
        args.put("todir", destination.toOSString());
        args.put("flatten", "true");
        script.printStartTag("move", args);
        script.incrementIdent();
        args.clear();
        args.put("dir", destination.toOSString());
        int i = 0;
        while (i < files.length) {
            args.put("includes", "features/*/" + files[i]);
            script.printElement("fileset", args);
            ++i;
        }
        script.decrementIdent();
        script.printEndTag("move");
    }

    public void parseMapFileEntry(String rawEntry, Properties overrideTags, Map entryInfos) throws CoreException {
        String[] arguments = Utils.getArrayFromStringWithBlank(rawEntry, SEPARATOR);
        HashMap<String, String> table = new HashMap<String, String>();
        int i = 0;
        while (i < arguments.length) {
            String arg = arguments[i];
            int index = arg.indexOf(61);
            if (index == -1) {
                P2IUFetchFactory.throwException(NLS.bind((String)Messages.error_incorrectDirectoryEntry, entryInfos.get("element")), null);
            }
            String key = arg.substring(0, index);
            String value = arg.substring(index + 1);
            table.put(key, value);
            ++i;
        }
        entryInfos.put("id", table.get("id"));
        if (table.containsKey("version")) {
            entryInfos.put("version", table.get("version"));
        } else {
            entryInfos.put("version", "");
        }
        entryInfos.put(KEY_REPOSITORY, table.get(KEY_REPOSITORY));
        if (entryInfos.get("id") == null || entryInfos.get(KEY_REPOSITORY) == null) {
            P2IUFetchFactory.throwException(NLS.bind((String)Messages.error_directoryEntryRequiresIdAndRepo, entryInfos.get("element")), null);
        }
    }

    private static class IUFetchInfo {
        String id;
        String version;

        public IUFetchInfo(String id, String version) {
            this.id = id;
            this.version = version;
        }

        public int hashCode() {
            int result = 1;
            result = 31 * result + (this.id == null ? 0 : this.id.hashCode());
            result = 31 * result + (this.version == null ? 0 : this.version.hashCode());
            return result;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || this.getClass() != obj.getClass()) {
                return false;
            }
            IUFetchInfo other = (IUFetchInfo)obj;
            if (this.id == null ? other.id != null : !this.id.equals(other.id)) {
                return false;
            }
            return !(this.version == null ? other.version != null : !this.version.equals(other.version));
        }
    }
}

