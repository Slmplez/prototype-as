/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.projection;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentInformationMapping;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.ISlaveDocumentManager;
import org.eclipse.jface.text.ISlaveDocumentManagerExtension;
import org.eclipse.jface.text.projection.ProjectionDocument;

public class ProjectionDocumentManager
implements IDocumentListener,
ISlaveDocumentManager,
ISlaveDocumentManagerExtension {
    private Map fProjectionRegistry = new HashMap();

    private void add(IDocument master, ProjectionDocument projection) {
        ArrayList<ProjectionDocument> list = (ArrayList<ProjectionDocument>)this.fProjectionRegistry.get(master);
        if (list == null) {
            list = new ArrayList<ProjectionDocument>(1);
            this.fProjectionRegistry.put(master, list);
        }
        list.add(projection);
    }

    private void remove(IDocument master, ProjectionDocument projection) {
        List list = (List)this.fProjectionRegistry.get(master);
        if (list != null) {
            list.remove(projection);
            if (list.size() == 0) {
                this.fProjectionRegistry.remove(master);
            }
        }
    }

    private boolean hasProjection(IDocument master) {
        return this.fProjectionRegistry.get(master) instanceof List;
    }

    private Iterator getProjectionsIterator(IDocument master) {
        List list = (List)this.fProjectionRegistry.get(master);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    protected void fireDocumentEvent(boolean about, DocumentEvent masterEvent) {
        master = masterEvent.getDocument();
        e = this.getProjectionsIterator(master);
        if (e != null) ** GOTO lbl10
        return;
lbl-1000:
        // 1 sources

        {
            document = (ProjectionDocument)e.next();
            if (about) {
                document.masterDocumentAboutToBeChanged(masterEvent);
                continue;
            }
            document.masterDocumentChanged(masterEvent);
lbl10:
            // 3 sources

            ** while (e.hasNext())
        }
lbl11:
        // 1 sources

    }

    public void documentChanged(DocumentEvent event) {
        this.fireDocumentEvent(false, event);
    }

    public void documentAboutToBeChanged(DocumentEvent event) {
        this.fireDocumentEvent(true, event);
    }

    public IDocumentInformationMapping createMasterSlaveMapping(IDocument slave) {
        if (slave instanceof ProjectionDocument) {
            ProjectionDocument projectionDocument = (ProjectionDocument)slave;
            return projectionDocument.getDocumentInformationMapping();
        }
        return null;
    }

    public IDocument createSlaveDocument(IDocument master) {
        if (!this.hasProjection(master)) {
            master.addDocumentListener(this);
        }
        ProjectionDocument slave = this.createProjectionDocument(master);
        this.add(master, slave);
        return slave;
    }

    protected ProjectionDocument createProjectionDocument(IDocument master) {
        return new ProjectionDocument(master);
    }

    public void freeSlaveDocument(IDocument slave) {
        if (slave instanceof ProjectionDocument) {
            ProjectionDocument projectionDocument = (ProjectionDocument)slave;
            IDocument master = projectionDocument.getMasterDocument();
            this.remove(master, projectionDocument);
            projectionDocument.dispose();
            if (!this.hasProjection(master)) {
                master.removeDocumentListener(this);
            }
        }
    }

    public IDocument getMasterDocument(IDocument slave) {
        if (slave instanceof ProjectionDocument) {
            return ((ProjectionDocument)slave).getMasterDocument();
        }
        return null;
    }

    public boolean isSlaveDocument(IDocument document) {
        return document instanceof ProjectionDocument;
    }

    public void setAutoExpandMode(IDocument slave, boolean autoExpanding) {
        if (slave instanceof ProjectionDocument) {
            ((ProjectionDocument)slave).setAutoExpandMode(autoExpanding);
        }
    }

    public IDocument[] getSlaveDocuments(IDocument master) {
        List list = (List)this.fProjectionRegistry.get(master);
        if (list != null) {
            IDocument[] result = new IDocument[list.size()];
            list.toArray(result);
            return result;
        }
        return null;
    }
}

