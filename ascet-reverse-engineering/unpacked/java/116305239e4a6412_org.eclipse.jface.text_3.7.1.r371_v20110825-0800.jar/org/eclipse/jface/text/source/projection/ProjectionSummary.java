/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 */
package org.eclipse.jface.text.source.projection;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationAccess;
import org.eclipse.jface.text.source.IAnnotationAccessExtension;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.projection.AnnotationBag;
import org.eclipse.jface.text.source.projection.ProjectionAnnotation;
import org.eclipse.jface.text.source.projection.ProjectionAnnotationModel;
import org.eclipse.jface.text.source.projection.ProjectionViewer;

class ProjectionSummary {
    private ProjectionViewer fProjectionViewer;
    private IAnnotationAccess fAnnotationAccess;
    private List fConfiguredAnnotationTypes;
    private Object fLock = new Object();
    private IProgressMonitor fProgressMonitor;
    private volatile Summarizer fSummarizer;

    public ProjectionSummary(ProjectionViewer projectionViewer, IAnnotationAccess annotationAccess) {
        this.fProjectionViewer = projectionViewer;
        this.fAnnotationAccess = annotationAccess;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addAnnotationType(String annotationType) {
        Object object = this.fLock;
        synchronized (object) {
            if (this.fConfiguredAnnotationTypes == null) {
                this.fConfiguredAnnotationTypes = new ArrayList();
                this.fConfiguredAnnotationTypes.add(annotationType);
            } else if (!this.fConfiguredAnnotationTypes.contains(annotationType)) {
                this.fConfiguredAnnotationTypes.add(annotationType);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeAnnotationType(String annotationType) {
        Object object = this.fLock;
        synchronized (object) {
            if (this.fConfiguredAnnotationTypes != null) {
                this.fConfiguredAnnotationTypes.remove(annotationType);
                if (this.fConfiguredAnnotationTypes.size() == 0) {
                    this.fConfiguredAnnotationTypes = null;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void updateSummaries() {
        Object object = this.fLock;
        synchronized (object) {
            if (this.fConfiguredAnnotationTypes != null) {
                if (this.fSummarizer == null) {
                    this.fSummarizer = new Summarizer();
                }
                this.fSummarizer.reset();
            }
        }
    }

    private void internalUpdateSummaries(IProgressMonitor monitor) {
        IAnnotationModel visualAnnotationModel = this.fProjectionViewer.getVisualAnnotationModel();
        if (visualAnnotationModel == null) {
            return;
        }
        this.removeSummaries(monitor, visualAnnotationModel);
        if (this.isCanceled(monitor)) {
            return;
        }
        this.createSummaries(monitor, visualAnnotationModel);
    }

    private boolean isCanceled(IProgressMonitor monitor) {
        return monitor != null && monitor.isCanceled();
    }

    private void removeSummaries(IProgressMonitor monitor, IAnnotationModel visualAnnotationModel) {
        IAnnotationModelExtension extension = null;
        ArrayList<Annotation> bags = null;
        if (visualAnnotationModel instanceof IAnnotationModelExtension) {
            extension = (IAnnotationModelExtension)visualAnnotationModel;
            bags = new ArrayList<Annotation>();
        }
        Iterator e = visualAnnotationModel.getAnnotationIterator();
        while (e.hasNext()) {
            Annotation annotation = (Annotation)e.next();
            if (annotation instanceof AnnotationBag) {
                if (bags == null) {
                    visualAnnotationModel.removeAnnotation(annotation);
                } else {
                    bags.add(annotation);
                }
            }
            if (!this.isCanceled(monitor)) continue;
            return;
        }
        if (bags != null && bags.size() > 0) {
            Annotation[] deletions = new Annotation[bags.size()];
            bags.toArray(deletions);
            if (!this.isCanceled(monitor)) {
                extension.replaceAnnotations(deletions, null);
            }
        }
    }

    private void createSummaries(IProgressMonitor monitor, IAnnotationModel visualAnnotationModel) {
        ProjectionAnnotationModel model = this.fProjectionViewer.getProjectionAnnotationModel();
        if (model == null) {
            return;
        }
        HashMap additions = new HashMap();
        Iterator e = model.getAnnotationIterator();
        while (e.hasNext()) {
            Position summaryAnchor;
            IRegion[] summaryRegions;
            Position position;
            ProjectionAnnotation projection = (ProjectionAnnotation)e.next();
            if (projection.isCollapsed() && (position = model.getPosition(projection)) != null && (summaryRegions = this.fProjectionViewer.computeCollapsedRegions(position)) != null && (summaryAnchor = this.fProjectionViewer.computeCollapsedRegionAnchor(position)) != null) {
                this.createSummary(additions, summaryRegions, summaryAnchor);
            }
            if (!this.isCanceled(monitor)) continue;
            return;
        }
        if (additions.size() > 0) {
            if (visualAnnotationModel instanceof IAnnotationModelExtension) {
                IAnnotationModelExtension extension = (IAnnotationModelExtension)visualAnnotationModel;
                if (!this.isCanceled(monitor)) {
                    extension.replaceAnnotations(null, additions);
                }
            } else {
                Iterator e1 = additions.keySet().iterator();
                while (e1.hasNext()) {
                    AnnotationBag bag = (AnnotationBag)((Object)e1.next());
                    Position position = (Position)additions.get((Object)bag);
                    if (this.isCanceled(monitor)) {
                        return;
                    }
                    visualAnnotationModel.addAnnotation((Annotation)bag, position);
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void createSummary(Map additions, IRegion[] summaryRegions, Position summaryAnchor) {
        AnnotationBag bag;
        int size = 0;
        HashMap<String, AnnotationBag> map = null;
        Object object = this.fLock;
        synchronized (object) {
            if (this.fConfiguredAnnotationTypes != null) {
                size = this.fConfiguredAnnotationTypes.size();
                map = new HashMap<String, AnnotationBag>();
                int i = 0;
                while (i < size) {
                    String type = (String)this.fConfiguredAnnotationTypes.get(i);
                    map.put(type, new AnnotationBag(type));
                    ++i;
                }
            }
        }
        if (map == null) {
            return;
        }
        IAnnotationModel model = this.fProjectionViewer.getAnnotationModel();
        if (model == null) {
            return;
        }
        Iterator e = model.getAnnotationIterator();
        while (e.hasNext()) {
            Position position;
            Annotation annotation = (Annotation)e.next();
            bag = this.findBagForType(map, annotation.getType());
            if (bag == null || !this.includes(summaryRegions, position = model.getPosition(annotation))) continue;
            bag.add(annotation);
        }
        int i = 0;
        while (i < size) {
            bag = (AnnotationBag)((Object)map.get(this.fConfiguredAnnotationTypes.get(i)));
            if (!bag.isEmpty()) {
                additions.put(bag, new Position(summaryAnchor.getOffset(), summaryAnchor.getLength()));
            }
            ++i;
        }
    }

    private AnnotationBag findBagForType(Map bagMap, String annotationType) {
        AnnotationBag bag = (AnnotationBag)((Object)bagMap.get(annotationType));
        if (bag == null && this.fAnnotationAccess instanceof IAnnotationAccessExtension) {
            IAnnotationAccessExtension extension = (IAnnotationAccessExtension)((Object)this.fAnnotationAccess);
            Object[] superTypes = extension.getSupertypes(annotationType);
            int i = 0;
            while (i < superTypes.length && bag == null) {
                bag = (AnnotationBag)((Object)bagMap.get(superTypes[i]));
                ++i;
            }
        }
        return bag;
    }

    private boolean includes(IRegion[] regions, Position position) {
        int i = 0;
        while (i < regions.length) {
            IRegion region = regions[i];
            if (position != null && !position.isDeleted() && region.getOffset() <= position.getOffset() && position.getOffset() + position.getLength() <= region.getOffset() + region.getLength()) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private class Summarizer
    extends Thread {
        private boolean fReset = true;

        public Summarizer() {
            ProjectionSummary.this.fProgressMonitor = (IProgressMonitor)new NullProgressMonitor();
            this.setDaemon(true);
            this.start();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void reset() {
            Object object = ProjectionSummary.this.fLock;
            synchronized (object) {
                this.fReset = true;
                ProjectionSummary.this.fProgressMonitor.setCanceled(true);
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void run() {
            Object object;
            while (true) {
                object = ProjectionSummary.this.fLock;
                synchronized (object) {
                    if (!this.fReset) {
                        break;
                    }
                    this.fReset = false;
                    ProjectionSummary.this.fProgressMonitor.setCanceled(false);
                }
                ProjectionSummary.this.internalUpdateSummaries(ProjectionSummary.this.fProgressMonitor);
            }
            object = ProjectionSummary.this.fLock;
            synchronized (object) {
                ProjectionSummary.this.fSummarizer = null;
            }
        }
    }
}

