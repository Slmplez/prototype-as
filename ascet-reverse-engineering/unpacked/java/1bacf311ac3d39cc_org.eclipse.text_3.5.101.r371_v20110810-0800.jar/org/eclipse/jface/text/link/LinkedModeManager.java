/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.link;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.link.ILinkedModeListener;
import org.eclipse.jface.text.link.LinkedModeModel;

class LinkedModeManager {
    private static Map fgManagers = new HashMap();
    private Stack fEnvironments = new Stack();
    private Listener fListener = new Listener();

    LinkedModeManager() {
    }

    public static boolean hasManager(IDocument document) {
        return fgManagers.get(document) != null;
    }

    public static boolean hasManager(IDocument[] documents) {
        int i = 0;
        while (i < documents.length) {
            if (LinkedModeManager.hasManager(documents[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public static LinkedModeManager getLinkedManager(IDocument[] documents, boolean force) {
        if (documents == null || documents.length == 0) {
            return null;
        }
        HashSet<LinkedModeManager> mgrs = new HashSet<LinkedModeManager>();
        LinkedModeManager mgr = null;
        int i = 0;
        while (i < documents.length) {
            mgr = (LinkedModeManager)fgManagers.get(documents[i]);
            if (mgr != null) {
                mgrs.add(mgr);
            }
            ++i;
        }
        if (mgrs.size() > 1) {
            if (force) {
                Iterator it = mgrs.iterator();
                while (it.hasNext()) {
                    LinkedModeManager m = (LinkedModeManager)it.next();
                    m.closeAllEnvironments();
                }
            } else {
                return null;
            }
        }
        if (mgrs.size() == 0) {
            mgr = new LinkedModeManager();
        }
        i = 0;
        while (i < documents.length) {
            fgManagers.put(documents[i], mgr);
            ++i;
        }
        return mgr;
    }

    public static void cancelManager(IDocument document) {
        LinkedModeManager mgr = (LinkedModeManager)fgManagers.get(document);
        if (mgr != null) {
            mgr.closeAllEnvironments();
        }
    }

    /*
     * Unable to fully structure code
     */
    private void left(LinkedModeModel model, int flags) {
        if (this.fEnvironments.contains(model)) ** GOTO lbl5
        return;
        while ((env = (LinkedModeModel)this.fEnvironments.pop()) != model) {
            env.exit(0);
lbl5:
            // 2 sources

            if (!this.fEnvironments.isEmpty()) continue;
        }
        if (this.fEnvironments.isEmpty()) {
            this.removeManager();
        }
    }

    private void closeAllEnvironments() {
        while (!this.fEnvironments.isEmpty()) {
            LinkedModeModel env = (LinkedModeModel)this.fEnvironments.pop();
            env.exit(0);
        }
        this.removeManager();
    }

    private void removeManager() {
        Iterator it = fgManagers.keySet().iterator();
        while (it.hasNext()) {
            IDocument doc = (IDocument)it.next();
            if (fgManagers.get(doc) != this) continue;
            it.remove();
        }
    }

    /*
     * Loose catch block
     */
    public boolean nestEnvironment(LinkedModeModel model, boolean force) {
        Assert.isNotNull((Object)model);
        while (true) {
            if (!this.fEnvironments.isEmpty()) break block6;
            model.addLinkingListener(this.fListener);
            this.fEnvironments.push(model);
            break;
        }
        catch (Throwable throwable) {
            Assert.isTrue((this.fEnvironments.size() > 0 ? 1 : 0) != 0);
            throw throwable;
        }
        {
            LinkedModeModel top;
            block8: {
                block7: {
                    block6: {
                        Assert.isTrue((this.fEnvironments.size() > 0 ? 1 : 0) != 0);
                        return true;
                    }
                    top = (LinkedModeModel)this.fEnvironments.peek();
                    if (!model.canNestInto(top)) break block7;
                    model.addLinkingListener(this.fListener);
                    this.fEnvironments.push(model);
                    Assert.isTrue((this.fEnvironments.size() > 0 ? 1 : 0) != 0);
                    return true;
                }
                if (force) break block8;
                Assert.isTrue((this.fEnvironments.size() > 0 ? 1 : 0) != 0);
                return false;
            }
            this.fEnvironments.pop();
            top.exit(0);
            continue;
        }
    }

    public LinkedModeModel getTopEnvironment() {
        if (this.fEnvironments.isEmpty()) {
            return null;
        }
        return (LinkedModeModel)this.fEnvironments.peek();
    }

    private class Listener
    implements ILinkedModeListener {
        private Listener() {
        }

        public void left(LinkedModeModel model, int flags) {
            LinkedModeManager.this.left(model, flags);
        }

        public void suspend(LinkedModeModel model) {
        }

        public void resume(LinkedModeModel model, int flags) {
        }
    }
}

