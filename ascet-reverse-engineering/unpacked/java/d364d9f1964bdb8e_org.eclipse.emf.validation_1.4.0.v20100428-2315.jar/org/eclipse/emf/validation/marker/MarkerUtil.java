/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package org.eclipse.emf.validation.marker;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.validation.internal.service.ResourceStatus;
import org.eclipse.emf.validation.marker.IMarkerConfigurator;
import org.eclipse.emf.validation.model.IConstraintStatus;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class MarkerUtil {
    public static final String VALIDATION_MARKER_TYPE = "org.eclipse.emf.validation.problem";
    public static final String RULE_ATTRIBUTE = "rule";
    private static final String PLATFORM_SCHEME = "platform";
    private static final String FILE_SCHEME = "file";
    private static final String RESOURCE_SEGMENT = "resource";

    public static void createMarkers(IStatus validationStatus) throws CoreException {
        MarkerUtil.createMarkers(validationStatus, VALIDATION_MARKER_TYPE, null);
    }

    public static void createMarkers(IStatus validationStatus, int severityMask) throws CoreException {
        MarkerUtil.createMarkers(validationStatus, severityMask, VALIDATION_MARKER_TYPE, null);
    }

    public static void createMarkers(IStatus validationStatus, String markerType, IMarkerConfigurator configurator) throws CoreException {
        MarkerUtil.createMarkers(validationStatus, 65535, markerType, configurator);
    }

    public static void createMarkers(final IStatus validationStatus, final int severityMask, final String markerType, final IMarkerConfigurator configurator) throws CoreException {
        if (validationStatus.isOK()) {
            return;
        }
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor m) throws CoreException {
                HashMap visitedResources = new HashMap();
                if (validationStatus.isMultiStatus()) {
                    MarkerUtil.createMarkers(validationStatus, severityMask, markerType, configurator, visitedResources);
                } else if (validationStatus.matches(severityMask) && validationStatus instanceof IConstraintStatus) {
                    MarkerUtil.createMarker((IConstraintStatus)validationStatus, markerType, configurator, visitedResources);
                }
            }
        };
        ResourcesPlugin.getWorkspace().run(runnable, null);
    }

    private static void createMarkers(IStatus validationStatus, int severityMask, String markerType, IMarkerConfigurator configurator, Map<URI, IFile> visitedResources) throws CoreException {
        IStatus[] children;
        IStatus[] iStatusArray = children = validationStatus.getChildren();
        int n = children.length;
        int n2 = 0;
        while (n2 < n) {
            IStatus element = iStatusArray[n2];
            if (element.isMultiStatus()) {
                MarkerUtil.createMarkers(element, severityMask, markerType, configurator, visitedResources);
            } else if (element.matches(severityMask) && element instanceof IConstraintStatus) {
                MarkerUtil.createMarker((IConstraintStatus)element, markerType, configurator, visitedResources);
            }
            ++n2;
        }
    }

    private static void createMarker(IConstraintStatus status, String markerType, IMarkerConfigurator configurator, Map<URI, IFile> visitedResources) throws CoreException {
        Resource r = status.getTarget().eResource();
        URI uri = r.getURI();
        uri = r.getResourceSet().getURIConverter().normalize(uri);
        IFile file = visitedResources.get(uri);
        if (file == null) {
            if (PLATFORM_SCHEME.equals(uri.scheme()) && uri.segmentCount() > 1 && RESOURCE_SEGMENT.equals(uri.segment(0))) {
                StringBuffer platformResourcePath = new StringBuffer();
                int j = 1;
                int size = uri.segmentCount();
                while (j < size) {
                    platformResourcePath.append('/');
                    platformResourcePath.append(URI.decode((String)uri.segment(j)));
                    ++j;
                }
                file = ResourcesPlugin.getWorkspace().getRoot().getFile((IPath)new Path(platformResourcePath.toString()));
            } else if (FILE_SCHEME.equals(uri.scheme())) {
                Path fileResourcePath = new Path(uri.toFileString());
                file = ResourcesPlugin.getWorkspace().getRoot().getFileForLocation((IPath)new Path(fileResourcePath.toString()));
            }
            if (file != null) {
                file.deleteMarkers(VALIDATION_MARKER_TYPE, true, 0);
                visitedResources.put(uri, file);
            }
        }
        if (file != null) {
            if (!status.matches(15)) {
                return;
            }
            IMarker marker = file.createMarker(markerType);
            switch (status.getSeverity()) {
                case 1: {
                    marker.setAttribute("severity", 0);
                    marker.setAttribute("priority", 0);
                    break;
                }
                case 2: {
                    marker.setAttribute("severity", 1);
                    marker.setAttribute("priority", 1);
                    break;
                }
                case 4: 
                case 8: {
                    marker.setAttribute("severity", 2);
                    marker.setAttribute("priority", 2);
                }
            }
            marker.setAttribute("message", (Object)status.getMessage());
            marker.setAttribute("uri", (Object)EcoreUtil.getURI((EObject)status.getTarget()).toString());
            marker.setAttribute(RULE_ATTRIBUTE, (Object)status.getConstraint().getDescriptor().getId());
            if (configurator != null) {
                configurator.appendMarkerConfiguration(marker, status);
            }
        }
    }

    public static void updateMarkers(IStatus validationStatus) throws CoreException {
        MarkerUtil.updateMarkers(validationStatus, VALIDATION_MARKER_TYPE, null);
    }

    public static void updateMarkers(IStatus validationStatus, int severityMask) throws CoreException {
        MarkerUtil.updateMarkers(validationStatus, severityMask, VALIDATION_MARKER_TYPE, null);
    }

    public static void updateMarkers(IStatus validationStatus, String markerType, IMarkerConfigurator configurator) throws CoreException {
        MarkerUtil.updateMarkers(validationStatus, 65535, markerType, configurator);
    }

    public static void updateMarkers(final IStatus validationStatus, final int severityMask, final String markerType, final IMarkerConfigurator configurator) throws CoreException {
        IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

            public void run(IProgressMonitor m) throws CoreException {
                HashMap resourcesToVisit = new HashMap();
                if (validationStatus.isMultiStatus()) {
                    MarkerUtil.updateMarkers(validationStatus, severityMask, resourcesToVisit);
                } else if (MarkerUtil.shouldAddStatus(validationStatus, severityMask)) {
                    MarkerUtil.addStatus((IConstraintStatus)validationStatus, resourcesToVisit);
                }
                for (Map.Entry currentItem : resourcesToVisit.entrySet()) {
                    FileStatusListPair fileStatusList = (FileStatusListPair)currentItem.getValue();
                    MarkerUtil.updateFileMarkers(fileStatusList.getFile(), fileStatusList.getStatuses(), markerType, configurator);
                }
            }
        };
        ResourcesPlugin.getWorkspace().run(runnable, null);
    }

    private static void updateMarkers(IStatus validationStatus, int severityMask, Map<URI, FileStatusListPair> resourcesToVisit) {
        if (validationStatus.isMultiStatus()) {
            IStatus[] children;
            IStatus[] iStatusArray = children = validationStatus.getChildren();
            int n = children.length;
            int n2 = 0;
            while (n2 < n) {
                IStatus next = iStatusArray[n2];
                if (next.isMultiStatus()) {
                    MarkerUtil.updateMarkers(next, severityMask, resourcesToVisit);
                } else if (MarkerUtil.shouldAddStatus(next, severityMask)) {
                    MarkerUtil.addStatus((IConstraintStatus)next, resourcesToVisit);
                }
                ++n2;
            }
        } else if (MarkerUtil.shouldAddStatus(validationStatus, severityMask)) {
            MarkerUtil.addStatus((IConstraintStatus)validationStatus, resourcesToVisit);
        }
    }

    private static boolean shouldAddStatus(IStatus status, int severityMask) {
        return status.matches(severityMask) && status instanceof IConstraintStatus || status instanceof ResourceStatus;
    }

    private static void addStatus(IConstraintStatus status, Map<URI, FileStatusListPair> resourcesToVisit) {
        Resource r = status.getTarget().eResource();
        URI uri = r.getURI();
        uri = r.getResourceSet().getURIConverter().normalize(uri);
        FileStatusListPair fileStatusList = resourcesToVisit.get(uri);
        if (fileStatusList == null) {
            fileStatusList = new FileStatusListPair();
            if (PLATFORM_SCHEME.equals(uri.scheme()) && uri.segmentCount() > 1 && RESOURCE_SEGMENT.equals(uri.segment(0))) {
                StringBuffer platformResourcePath = new StringBuffer();
                int j = 1;
                int size = uri.segmentCount();
                while (j < size) {
                    platformResourcePath.append('/');
                    platformResourcePath.append(URI.decode((String)uri.segment(j)));
                    ++j;
                }
                fileStatusList.setFile(ResourcesPlugin.getWorkspace().getRoot().getFile((IPath)new Path(platformResourcePath.toString())));
            } else if (FILE_SCHEME.equals(uri.scheme())) {
                Path fileResourcePath = new Path(uri.toFileString());
                fileStatusList.setFile(ResourcesPlugin.getWorkspace().getRoot().getFileForLocation((IPath)fileResourcePath));
            }
            if (fileStatusList.getFile() != null) {
                fileStatusList.addStatus(status);
                resourcesToVisit.put(uri, fileStatusList);
            }
        } else {
            fileStatusList.addStatus(status);
        }
    }

    private static void updateFileMarkers(IFile file, List<IConstraintStatus> statuses, String markerType, IMarkerConfigurator configurator) throws CoreException {
        file.deleteMarkers(markerType, true, 0);
        for (IConstraintStatus status : statuses) {
            if (status.isOK()) continue;
            IMarker marker = file.createMarker(markerType);
            switch (status.getSeverity()) {
                case 1: {
                    marker.setAttribute("severity", 0);
                    marker.setAttribute("priority", 0);
                    break;
                }
                case 2: {
                    marker.setAttribute("severity", 1);
                    marker.setAttribute("priority", 1);
                    break;
                }
                case 4: 
                case 8: {
                    marker.setAttribute("severity", 2);
                    marker.setAttribute("priority", 2);
                }
            }
            marker.setAttribute("message", (Object)status.getMessage());
            marker.setAttribute("uri", (Object)EcoreUtil.getURI((EObject)status.getTarget()).toString());
            marker.setAttribute(RULE_ATTRIBUTE, (Object)status.getConstraint().getDescriptor().getId());
            if (configurator == null) continue;
            configurator.appendMarkerConfiguration(marker, status);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class FileStatusListPair {
        private IFile file = null;
        private List<IConstraintStatus> statuses = new ArrayList<IConstraintStatus>();

        FileStatusListPair() {
        }

        void setFile(IFile file) {
            this.file = file;
        }

        void addStatus(IConstraintStatus status) {
            this.statuses.add(status);
        }

        List<IConstraintStatus> getStatuses() {
            return this.statuses;
        }

        Boolean includes(IConstraintStatus status) {
            return this.statuses.contains(status);
        }

        IFile getFile() {
            return this.file;
        }
    }
}

