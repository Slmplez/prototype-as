/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.link;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.link.ILinkedModeListener;
import org.eclipse.jface.text.link.InclusivePositionUpdater;
import org.eclipse.jface.text.link.LinkedModeManager;
import org.eclipse.jface.text.link.LinkedPosition;
import org.eclipse.jface.text.link.LinkedPositionGroup;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.TextEdit;

public class LinkedModeModel {
    private final List fGroups = new ArrayList();
    private final Set fDocuments = new HashSet();
    private final IPositionUpdater fUpdater = new InclusivePositionUpdater(this.getCategory());
    private final DocumentListener fDocumentListener = new DocumentListener();
    private LinkedModeModel fParentEnvironment;
    private LinkedPosition fParentPosition = null;
    private boolean fIsSealed = false;
    private boolean fIsChanging = false;
    private final List fListeners = new ArrayList();
    private boolean fIsActive = true;
    private List fPositionSequence = new ArrayList();

    public static boolean hasInstalledModel(IDocument document) {
        return LinkedModeManager.hasManager(document);
    }

    public static boolean hasInstalledModel(IDocument[] documents) {
        return LinkedModeManager.hasManager(documents);
    }

    public static void closeAllModels(IDocument document) {
        LinkedModeManager.cancelManager(document);
    }

    public static LinkedModeModel getModel(IDocument document, int offset) {
        if (!LinkedModeModel.hasInstalledModel(document)) {
            return null;
        }
        LinkedModeManager mgr = LinkedModeManager.getLinkedManager(new IDocument[]{document}, false);
        if (mgr != null) {
            return mgr.getTopEnvironment();
        }
        return null;
    }

    private boolean isChanging() {
        return this.fIsChanging || this.fParentEnvironment != null && this.fParentEnvironment.isChanging();
    }

    private void enforceDisjoint(LinkedPositionGroup group) throws BadLocationException {
        Iterator it = this.fGroups.iterator();
        while (it.hasNext()) {
            LinkedPositionGroup g = (LinkedPositionGroup)it.next();
            g.enforceDisjoint(group);
        }
    }

    public void exit(int flags) {
        if (!this.fIsActive) {
            return;
        }
        this.fIsActive = false;
        Iterator it = this.fDocuments.iterator();
        while (it.hasNext()) {
            IDocument doc = (IDocument)it.next();
            try {
                doc.removePositionCategory(this.getCategory());
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                Assert.isTrue((boolean)false);
            }
            doc.removePositionUpdater(this.fUpdater);
            doc.removeDocumentListener(this.fDocumentListener);
        }
        this.fDocuments.clear();
        this.fGroups.clear();
        ArrayList listeners = new ArrayList(this.fListeners);
        this.fListeners.clear();
        Iterator it2 = listeners.iterator();
        while (it2.hasNext()) {
            ILinkedModeListener listener = (ILinkedModeListener)it2.next();
            listener.left(this, flags);
        }
        if (this.fParentEnvironment != null) {
            this.fParentEnvironment.resume(flags);
        }
    }

    public void stopForwarding(int flags) {
        this.fDocumentListener.fExit = true;
    }

    private void manageDocument(IDocument document) {
        if (!this.fDocuments.contains(document)) {
            this.fDocuments.add(document);
            document.addPositionCategory(this.getCategory());
            document.addPositionUpdater(this.fUpdater);
            document.addDocumentListener(this.fDocumentListener);
        }
    }

    private String getCategory() {
        return this.toString();
    }

    public void addGroup(LinkedPositionGroup group) throws BadLocationException {
        if (group == null) {
            throw new IllegalArgumentException("group may not be null");
        }
        if (this.fIsSealed) {
            throw new IllegalStateException("model is already installed");
        }
        if (this.fGroups.contains(group)) {
            return;
        }
        this.enforceDisjoint(group);
        group.seal();
        this.fGroups.add(group);
    }

    public void forceInstall() throws BadLocationException {
        if (!this.install(true)) {
            Assert.isTrue((boolean)false);
        }
    }

    public boolean tryInstall() throws BadLocationException {
        return this.install(false);
    }

    private boolean install(boolean force) throws BadLocationException {
        if (this.fIsSealed) {
            throw new IllegalStateException("model is already installed");
        }
        this.enforceNotEmpty();
        IDocument[] documents = this.getDocuments();
        LinkedModeManager manager = LinkedModeManager.getLinkedManager(documents, force);
        Assert.isTrue((!force || manager != null ? 1 : 0) != 0);
        if (manager == null) {
            return false;
        }
        if (!manager.nestEnvironment(this, force)) {
            if (force) {
                Assert.isTrue((boolean)false);
            } else {
                return false;
            }
        }
        this.fIsSealed = true;
        if (this.fParentEnvironment != null) {
            this.fParentEnvironment.suspend();
        }
        try {
            Iterator it = this.fGroups.iterator();
            while (it.hasNext()) {
                LinkedPositionGroup group = (LinkedPositionGroup)it.next();
                group.register(this);
            }
            return true;
        }
        catch (BadLocationException e) {
            this.exit(0);
            throw e;
        }
    }

    private void enforceNotEmpty() {
        boolean hasPosition = false;
        Iterator it = this.fGroups.iterator();
        while (it.hasNext()) {
            if (((LinkedPositionGroup)it.next()).isEmpty()) continue;
            hasPosition = true;
            break;
        }
        if (!hasPosition) {
            throw new IllegalStateException("must specify at least one linked position");
        }
    }

    private IDocument[] getDocuments() {
        HashSet<IDocument> docs = new HashSet<IDocument>();
        Iterator it = this.fGroups.iterator();
        while (it.hasNext()) {
            LinkedPositionGroup group = (LinkedPositionGroup)it.next();
            docs.addAll(Arrays.asList(group.getDocuments()));
        }
        return docs.toArray(new IDocument[docs.size()]);
    }

    boolean canNestInto(LinkedModeModel parent) {
        Iterator it = this.fGroups.iterator();
        while (it.hasNext()) {
            LinkedPositionGroup group = (LinkedPositionGroup)it.next();
            if (this.enforceNestability(group, parent)) continue;
            this.fParentPosition = null;
            return false;
        }
        Assert.isNotNull((Object)this.fParentPosition);
        this.fParentEnvironment = parent;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean enforceNestability(LinkedPositionGroup group, LinkedModeModel model) {
        Assert.isNotNull((Object)model);
        Assert.isNotNull((Object)group);
        try {
            Iterator it = model.fGroups.iterator();
            while (it.hasNext()) {
                LinkedPositionGroup pg = (LinkedPositionGroup)it.next();
                LinkedPosition pos = pg.adopt(group);
                if (pos != null && this.fParentPosition != null && this.fParentPosition != pos) {
                    return false;
                }
                if (this.fParentPosition != null || pos == null) continue;
                this.fParentPosition = pos;
            }
            return this.fParentPosition != null;
        }
        catch (BadLocationException badLocationException) {
            return false;
        }
    }

    public boolean isNested() {
        return this.fParentEnvironment != null;
    }

    public List getTabStopSequence() {
        return this.fPositionSequence;
    }

    public void addLinkingListener(ILinkedModeListener listener) {
        Assert.isNotNull((Object)listener);
        if (!this.fListeners.contains(listener)) {
            this.fListeners.add(listener);
        }
    }

    public void removeLinkingListener(ILinkedModeListener listener) {
        this.fListeners.remove(listener);
    }

    public LinkedPosition findPosition(LinkedPosition toFind) {
        LinkedPosition position = null;
        Iterator it = this.fGroups.iterator();
        while (it.hasNext()) {
            LinkedPositionGroup group = (LinkedPositionGroup)it.next();
            position = group.getPosition(toFind);
            if (position != null) break;
        }
        return position;
    }

    void register(LinkedPosition position) throws BadLocationException {
        Assert.isNotNull((Object)position);
        IDocument document = position.getDocument();
        this.manageDocument(document);
        try {
            document.addPosition(this.getCategory(), position);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            Assert.isTrue((boolean)false);
        }
        int seqNr = position.getSequenceNumber();
        if (seqNr != -1) {
            this.fPositionSequence.add(position);
        }
    }

    private void suspend() {
        ArrayList l = new ArrayList(this.fListeners);
        Iterator it = l.iterator();
        while (it.hasNext()) {
            ILinkedModeListener listener = (ILinkedModeListener)it.next();
            listener.suspend(this);
        }
    }

    private void resume(int flags) {
        ArrayList l = new ArrayList(this.fListeners);
        Iterator it = l.iterator();
        while (it.hasNext()) {
            ILinkedModeListener listener = (ILinkedModeListener)it.next();
            listener.resume(this, flags);
        }
    }

    public boolean anyPositionContains(int offset) {
        Iterator it = this.fGroups.iterator();
        while (it.hasNext()) {
            LinkedPositionGroup group = (LinkedPositionGroup)it.next();
            if (!group.contains(offset)) continue;
            return true;
        }
        return false;
    }

    public LinkedPositionGroup getGroupForPosition(Position position) {
        Iterator it = this.fGroups.iterator();
        while (it.hasNext()) {
            LinkedPositionGroup group = (LinkedPositionGroup)it.next();
            if (!group.contains(position)) continue;
            return group;
        }
        return null;
    }

    private class DocumentListener
    implements IDocumentListener {
        private boolean fExit = false;

        private DocumentListener() {
        }

        public void documentAboutToBeChanged(DocumentEvent event) {
            if (LinkedModeModel.this.fParentEnvironment != null && LinkedModeModel.this.fParentEnvironment.isChanging()) {
                return;
            }
            Iterator it = LinkedModeModel.this.fGroups.iterator();
            while (it.hasNext()) {
                LinkedPositionGroup group = (LinkedPositionGroup)it.next();
                if (group.isLegalEvent(event)) continue;
                this.fExit = true;
                return;
            }
        }

        public void documentChanged(DocumentEvent event) {
            if (this.fExit) {
                LinkedModeModel.this.exit(8);
                return;
            }
            this.fExit = false;
            if (LinkedModeModel.this.fParentEnvironment != null && LinkedModeModel.this.fParentEnvironment.isChanging()) {
                return;
            }
            Map result = null;
            Iterator it = LinkedModeModel.this.fGroups.iterator();
            while (it.hasNext()) {
                LinkedPositionGroup group = (LinkedPositionGroup)it.next();
                Map map = group.handleEvent(event);
                if (result != null && map != null) {
                    LinkedModeModel.this.exit(8);
                    return;
                }
                if (map == null) continue;
                result = map;
            }
            if (result != null) {
                Iterator it2 = result.keySet().iterator();
                while (it2.hasNext()) {
                    IDocument doc = (IDocument)it2.next();
                    TextEdit edit = (TextEdit)result.get(doc);
                    Replace replace = new Replace(edit);
                    if (doc == event.getDocument()) {
                        if (!(doc instanceof IDocumentExtension)) continue;
                        ((IDocumentExtension)((Object)doc)).registerPostNotificationReplace(this, replace);
                        continue;
                    }
                    replace.perform(doc, this);
                }
            }
        }
    }

    private class Replace
    implements IDocumentExtension.IReplace {
        private TextEdit fEdit;

        public Replace(TextEdit edit) {
            this.fEdit = edit;
        }

        public void perform(IDocument document, IDocumentListener owner) throws RuntimeException, MalformedTreeException {
            document.removeDocumentListener(owner);
            LinkedModeModel.this.fIsChanging = true;
            try {
                try {
                    this.fEdit.apply(document, 3);
                }
                catch (BadLocationException e) {
                    throw new RuntimeException(e);
                }
            }
            finally {
                document.addDocumentListener(owner);
                LinkedModeModel.this.fIsChanging = false;
            }
        }
    }
}

