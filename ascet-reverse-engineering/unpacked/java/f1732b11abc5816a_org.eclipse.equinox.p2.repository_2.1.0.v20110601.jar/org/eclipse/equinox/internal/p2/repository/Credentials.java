/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.core.UIServices$AuthenticationInfo
 */
package org.eclipse.equinox.internal.p2.repository;

import java.net.URI;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.repository.Messages;
import org.eclipse.equinox.internal.p2.repository.helpers.DebugHelper;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.core.UIServices;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Credentials {
    private static final Map<String, UIServices.AuthenticationInfo> savedAuthInfo = Collections.synchronizedMap(new HashMap());
    private static Map<String, HostEntry> remembered;
    private static final Object promptLock;
    static /* synthetic */ Class class$0;

    static {
        promptLock = new Object();
    }

    public static UIServices.AuthenticationInfo forLocation(URI location, boolean prompt) throws LoginCanceledException, CoreException {
        return Credentials.forLocation(location, prompt, null);
    }

    /*
     * Exception decompiling
     */
    public static UIServices.AuthenticationInfo forLocation(URI location, boolean prompt, UIServices.AuthenticationInfo lastUsed) throws LoginCanceledException, CoreException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
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

    private static String uriToHost(URI location) {
        String host = location.getHost();
        if (host == null) {
            String scheme = location.getScheme();
            host = URIUtil.isFileURI((URI)location) || scheme == null ? new Path(location.toString()).removeLastSegments(1).toString() : location.toString();
        }
        return host;
    }

    private static UIServices.AuthenticationInfo restoreFromMemory(String nodeName) {
        return savedAuthInfo.get(nodeName);
    }

    private static void saveInMemory(String nodeName, UIServices.AuthenticationInfo loginDetails) {
        savedAuthInfo.put(nodeName, loginDetails);
    }

    private static void rememberCancel(String host) {
        Map<String, HostEntry> r = Credentials.getRemembered();
        if (r != null) {
            r.put(host, new HostEntry(-1));
        }
    }

    private static void checkRememberedCancel(String host) throws LoginCanceledException {
        HostEntry x;
        Map<String, HostEntry> r = Credentials.getRemembered();
        if (r != null && (x = r.get(host)) != null && x instanceof HostEntry && x.isCanceled()) {
            if (DebugHelper.DEBUG_REPOSITORY_CREDENTIALS) {
                DebugHelper.debug("Credentials", "checkRememberCancel:PREVIOUSLY CANCELED", new Object[]{"host", host});
            }
            throw new LoginCanceledException();
        }
    }

    private static void incrementPromptCount(String host) {
        Map<String, HostEntry> r = Credentials.getRemembered();
        if (r != null) {
            HostEntry value = r.get(host);
            if (value == null) {
                value = new HostEntry(1);
                r.put(host, value);
            } else {
                if (value.isStale()) {
                    value.reset();
                }
                value.increment();
            }
        }
    }

    private static int getPromptCount(String host) {
        HostEntry value;
        Map<String, HostEntry> r = Credentials.getRemembered();
        if (r != null && (value = r.get(host)) != null && !value.isStale()) {
            return value.getCount();
        }
        return 0;
    }

    public static synchronized void clearPromptCache() {
        if (remembered == null) {
            return;
        }
        Map<String, HostEntry> r = remembered;
        if (r == null || r.isEmpty()) {
            return;
        }
        for (HostEntry entry : r.values()) {
            entry.reset();
        }
    }

    public static synchronized void clearPromptCache(URI location) {
        Credentials.clearPromptCache(Credentials.uriToHost(location));
    }

    public static synchronized void clearPromptCache(String host) {
        if (remembered == null) {
            return;
        }
        Map<String, HostEntry> r = remembered;
        if (r == null) {
            return;
        }
        HostEntry value = r.get(host);
        if (value != null) {
            value.reset();
        }
    }

    private static synchronized Map<String, HostEntry> getRemembered() {
        if (remembered == null) {
            remembered = Collections.synchronizedMap(new HashMap());
        }
        return remembered;
    }

    public static ProvisionException internalError(Throwable t) {
        return new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", 1, Messages.repoMan_internalError, t));
    }

    private static class HostEntry {
        long timestamp;
        int count;

        public HostEntry(int count) {
            this.count = count;
            this.timestamp = System.currentTimeMillis();
        }

        public boolean isCanceled() {
            return this.count == -1 && !this.isStale();
        }

        public boolean isStale() {
            return System.currentTimeMillis() - this.timestamp > 180000L;
        }

        public int getCount() {
            return this.count;
        }

        public void increment() {
            if (this.count != -1) {
                ++this.count;
            }
        }

        public void reset() {
            this.count = 0;
            this.timestamp = System.currentTimeMillis();
        }
    }

    public static class LoginCanceledException
    extends Exception {
        private static final long serialVersionUID = 1L;
    }
}

