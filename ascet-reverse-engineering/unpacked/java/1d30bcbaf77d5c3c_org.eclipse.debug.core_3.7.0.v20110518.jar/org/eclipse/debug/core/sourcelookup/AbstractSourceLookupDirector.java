/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.core.sourcelookup;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationListener;
import org.eclipse.debug.core.ILaunchListener;
import org.eclipse.debug.core.ILaunchManager;
import org.eclipse.debug.core.IStatusHandler;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.ISourceLookupParticipant;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputer;
import org.eclipse.debug.core.sourcelookup.containers.DefaultSourceContainer;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupMessages;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public abstract class AbstractSourceLookupDirector
implements ISourceLookupDirector,
ILaunchConfigurationListener,
ILaunchListener {
    protected String fId;
    protected ArrayList fParticipants = new ArrayList();
    protected ISourceContainer[] fSourceContainers = null;
    protected ILaunchConfiguration fConfig;
    protected boolean fDuplicates = false;
    protected ISourcePathComputer fComputer = null;
    protected Map fResolvedElements = null;
    private ISourceLookupParticipant fCurrentParticipant;
    protected static final IStatus fPromptStatus = new Status(1, "org.eclipse.debug.ui", 200, "", null);
    protected static final IStatus fResolveDuplicatesStatus = new Status(1, "org.eclipse.debug.ui", 205, "", null);
    protected static final String DIRECTOR_ROOT_NODE = "sourceLookupDirector";
    protected static final String CONTAINERS_NODE = "sourceContainers";
    protected static final String DUPLICATES_ATTR = "duplicates";
    protected static final String CONTAINER_NODE = "container";
    protected static final String CONTAINER_TYPE_ATTR = "typeId";
    protected static final String CONTAINER_MEMENTO_ATTR = "memento";

    public void setId(String id) {
        this.fId = id;
    }

    public synchronized void dispose() {
        ILaunchManager launchManager = DebugPlugin.getDefault().getLaunchManager();
        launchManager.removeLaunchConfigurationListener(this);
        launchManager.removeLaunchListener(this);
        Iterator iterator = this.fParticipants.iterator();
        while (iterator.hasNext()) {
            ISourceLookupParticipant participant = (ISourceLookupParticipant)iterator.next();
            if (participant == this) continue;
            participant.dispose();
        }
        this.fParticipants.clear();
        if (this.fSourceContainers != null) {
            int i = 0;
            while (i < this.fSourceContainers.length) {
                this.fSourceContainers[i].dispose();
                ++i;
            }
        }
        this.fSourceContainers = null;
        this.fResolvedElements = null;
    }

    protected void abort(String message, Throwable exception) throws CoreException {
        Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, message, exception);
        throw new CoreException((IStatus)status);
    }

    private List parseSourceContainers(NodeList list) throws CoreException {
        ArrayList<ISourceContainer> containers = new ArrayList<ISourceContainer>();
        int i = 0;
        while (i < list.getLength()) {
            if (list.item(i).getNodeType() == 1) {
                ISourceContainerType type;
                Element element = (Element)list.item(i);
                String typeId = element.getAttribute(CONTAINER_TYPE_ATTR);
                if (typeId == null || typeId.equals("")) {
                    this.abort(SourceLookupMessages.AbstractSourceLookupDirector_11, null);
                }
                if ((type = DebugPlugin.getDefault().getLaunchManager().getSourceContainerType(typeId)) != null) {
                    String memento = element.getAttribute(CONTAINER_MEMENTO_ATTR);
                    if (memento == null || memento.equals("")) {
                        this.abort(SourceLookupMessages.AbstractSourceLookupDirector_13, null);
                    }
                    ISourceContainer container = type.createSourceContainer(memento);
                    containers.add(container);
                } else {
                    this.abort(MessageFormat.format((String)SourceLookupMessages.AbstractSourceLookupDirector_12, (Object[])new String[]{typeId}), null);
                }
            }
            ++i;
        }
        return containers;
    }

    private synchronized void addSourceLookupParticipant(ISourceLookupParticipant participant) {
        if (!this.fParticipants.contains(participant)) {
            this.fParticipants.add(participant);
            participant.init(this);
        }
    }

    public synchronized ISourceContainer[] getSourceContainers() {
        if (this.fSourceContainers == null) {
            return new ISourceContainer[0];
        }
        ISourceContainer[] copy = new ISourceContainer[this.fSourceContainers.length];
        System.arraycopy(this.fSourceContainers, 0, copy, 0, this.fSourceContainers.length);
        return copy;
    }

    public boolean isFindDuplicates() {
        return this.fDuplicates;
    }

    public void setFindDuplicates(boolean duplicates) {
        this.fDuplicates = duplicates;
    }

    private synchronized void removeSourceLookupParticipant(ISourceLookupParticipant participant) {
        if (this.fParticipants.remove(participant)) {
            participant.dispose();
        }
    }

    public void launchConfigurationAdded(ILaunchConfiguration configuration) {
        ILaunchConfiguration from = DebugPlugin.getDefault().getLaunchManager().getMovedFrom(configuration);
        if (from != null && from.equals(this.getLaunchConfiguration())) {
            this.fConfig = configuration;
        }
    }

    public void launchConfigurationChanged(ILaunchConfiguration configuration) {
        if (this.fConfig == null || configuration.isWorkingCopy()) {
            return;
        }
        if (this.fConfig.equals(configuration)) {
            try {
                String locatorMemento = configuration.getAttribute(ILaunchConfiguration.ATTR_SOURCE_LOCATOR_MEMENTO, (String)null);
                if (locatorMemento == null) {
                    this.initializeDefaults(configuration);
                } else {
                    this.initializeFromMemento(locatorMemento, configuration);
                }
            }
            catch (CoreException coreException) {}
        }
    }

    public void launchConfigurationRemoved(ILaunchConfiguration configuration) {
        if (configuration.equals(this.getLaunchConfiguration()) && DebugPlugin.getDefault().getLaunchManager().getMovedTo(configuration) == null) {
            this.fConfig = null;
        }
    }

    public synchronized String getMemento() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element rootNode = doc.createElement(DIRECTOR_ROOT_NODE);
        doc.appendChild(rootNode);
        Element pathNode = doc.createElement(CONTAINERS_NODE);
        if (this.fDuplicates) {
            pathNode.setAttribute(DUPLICATES_ATTR, "true");
        } else {
            pathNode.setAttribute(DUPLICATES_ATTR, "false");
        }
        rootNode.appendChild(pathNode);
        if (this.fSourceContainers != null) {
            int i = 0;
            while (i < this.fSourceContainers.length) {
                Element node = doc.createElement(CONTAINER_NODE);
                ISourceContainer container = this.fSourceContainers[i];
                ISourceContainerType type = container.getType();
                node.setAttribute(CONTAINER_TYPE_ATTR, type.getId());
                node.setAttribute(CONTAINER_MEMENTO_ATTR, type.getMemento(container));
                pathNode.appendChild(node);
                ++i;
            }
        }
        return DebugPlugin.serializeDocument(doc);
    }

    public void initializeFromMemento(String memento) throws CoreException {
        this.doInitializeFromMemento(memento, true);
    }

    protected void doInitializeFromMemento(String memento, boolean dispose) throws CoreException {
        Element rootElement;
        if (dispose) {
            this.dispose();
        }
        if (!(rootElement = DebugPlugin.parseDocument(memento)).getNodeName().equalsIgnoreCase(DIRECTOR_ROOT_NODE)) {
            this.abort(SourceLookupMessages.AbstractSourceLookupDirector_14, null);
        }
        NodeList list = rootElement.getChildNodes();
        int length = list.getLength();
        int i = 0;
        while (i < length) {
            Element entry;
            Node node = list.item(i);
            short type = node.getNodeType();
            if (type == 1 && (entry = (Element)node).getNodeName().equalsIgnoreCase(CONTAINERS_NODE)) {
                this.setFindDuplicates("true".equals(entry.getAttribute(DUPLICATES_ATTR)));
                NodeList children = entry.getChildNodes();
                List containers = this.parseSourceContainers(children);
                this.setSourceContainers(containers.toArray(new ISourceContainer[containers.size()]));
            }
            ++i;
        }
        this.initializeParticipants();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setSourceContainers(ISourceContainer[] containers) {
        AbstractSourceLookupDirector abstractSourceLookupDirector = this;
        synchronized (abstractSourceLookupDirector) {
            List<ISourceContainer> list = Arrays.asList(containers);
            ISourceContainer[] old = this.getSourceContainers();
            int i = 0;
            while (i < old.length) {
                if (!list.contains(old[i])) {
                    old[i].dispose();
                }
                ++i;
            }
            this.fSourceContainers = containers;
            i = 0;
            while (i < containers.length) {
                ISourceContainer container = containers[i];
                container.init(this);
                ++i;
            }
        }
        this.fResolvedElements = null;
        ISourceLookupParticipant[] participants = this.getParticipants();
        int i = 0;
        while (i < participants.length) {
            ISourceLookupParticipant participant = participants[i];
            participant.sourceContainersChanged(this);
            ++i;
        }
    }

    public Object getSourceElement(IStackFrame stackFrame) {
        return this.getSourceElement((Object)stackFrame);
    }

    protected List doSourceLookup(Object element) {
        SourceLookupQuery query = new SourceLookupQuery(element);
        SafeRunner.run((ISafeRunnable)query);
        List sources = query.getSourceElements();
        Throwable exception = query.getException();
        if (exception != null) {
            if (exception instanceof CoreException) {
                CoreException ce = (CoreException)exception;
                if (ce.getStatus().getSeverity() == 4) {
                    DebugPlugin.log(ce);
                }
            } else {
                DebugPlugin.log(exception);
            }
        }
        query.dispose();
        return sources;
    }

    public Object resolveSourceElement(Object element, List sources) {
        Iterator duplicates = sources.iterator();
        while (duplicates.hasNext()) {
            Object dup = duplicates.next();
            Object resolved = this.getCachedElement(dup);
            if (resolved == null) continue;
            return resolved;
        }
        IStatusHandler prompter = DebugPlugin.getDefault().getStatusHandler(fPromptStatus);
        if (prompter != null) {
            try {
                Object result = prompter.handleStatus(fResolveDuplicatesStatus, new Object[]{element, sources});
                if (result != null) {
                    this.cacheResolvedElement(sources, result);
                    return result;
                }
            }
            catch (CoreException coreException) {}
        }
        return sources.get(0);
    }

    private boolean checkDuplicate(Object sourceToAdd, List sources) {
        if (sources.size() == 0) {
            return false;
        }
        Iterator iterator = sources.iterator();
        while (iterator.hasNext()) {
            if (!iterator.next().equals(sourceToAdd)) continue;
            return true;
        }
        return false;
    }

    public void initializeFromMemento(String memento, ILaunchConfiguration configuration) throws CoreException {
        this.dispose();
        this.setLaunchConfiguration(configuration);
        this.doInitializeFromMemento(memento, false);
    }

    public void initializeDefaults(ILaunchConfiguration configuration) throws CoreException {
        this.dispose();
        this.setLaunchConfiguration(configuration);
        this.setSourceContainers(new ISourceContainer[]{new DefaultSourceContainer()});
        this.initializeParticipants();
    }

    public ILaunchConfiguration getLaunchConfiguration() {
        return this.fConfig;
    }

    protected void setLaunchConfiguration(ILaunchConfiguration configuration) {
        this.fConfig = configuration;
        ILaunchManager launchManager = DebugPlugin.getDefault().getLaunchManager();
        launchManager.addLaunchConfigurationListener(this);
        launchManager.addLaunchListener(this);
    }

    public void launchAdded(ILaunch launch) {
    }

    public void launchChanged(ILaunch launch) {
    }

    public void launchRemoved(ILaunch launch) {
        if (this.equals(launch.getSourceLocator())) {
            this.dispose();
        }
    }

    public synchronized ISourceLookupParticipant[] getParticipants() {
        return this.fParticipants.toArray(new ISourceLookupParticipant[this.fParticipants.size()]);
    }

    public boolean supportsSourceContainerType(ISourceContainerType type) {
        return true;
    }

    protected void cacheResolvedElement(List duplicates, Object sourceElement) {
        if (this.fResolvedElements == null) {
            this.fResolvedElements = new HashMap(10);
        }
        Iterator iterator = duplicates.iterator();
        while (iterator.hasNext()) {
            Object dup = iterator.next();
            this.fResolvedElements.put(dup, sourceElement);
        }
    }

    protected Object getCachedElement(Object duplicate) {
        if (this.fResolvedElements != null) {
            return this.fResolvedElements.get(duplicate);
        }
        return null;
    }

    protected void clearCachedElement(Object duplicate) {
        if (this.fResolvedElements != null) {
            this.fResolvedElements.remove(duplicate);
        }
    }

    public void clearSourceElements(Object element) {
        List list = this.doSourceLookup(element);
        if (list.size() > 0) {
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) {
                this.clearCachedElement(iterator.next());
            }
        }
    }

    public void addParticipants(ISourceLookupParticipant[] participants) {
        int i = 0;
        while (i < participants.length) {
            ISourceLookupParticipant participant = participants[i];
            this.addSourceLookupParticipant(participant);
            participant.sourceContainersChanged(this);
            ++i;
        }
    }

    public void removeParticipants(ISourceLookupParticipant[] participants) {
        int i = 0;
        while (i < participants.length) {
            this.removeSourceLookupParticipant(participants[i]);
            ++i;
        }
    }

    public String getId() {
        return this.fId;
    }

    public ISourcePathComputer getSourcePathComputer() {
        if (this.fComputer == null && this.getLaunchConfiguration() != null) {
            try {
                return DebugPlugin.getDefault().getLaunchManager().getSourcePathComputer(this.getLaunchConfiguration());
            }
            catch (CoreException coreException) {}
        }
        return this.fComputer;
    }

    public void setSourcePathComputer(ISourcePathComputer computer) {
        this.fComputer = computer;
    }

    public Object[] findSourceElements(Object object) throws CoreException {
        SourceLookupQuery query = new SourceLookupQuery(object);
        SafeRunner.run((ISafeRunnable)query);
        List sources = query.getSourceElements();
        Throwable exception = query.getException();
        query.dispose();
        if (exception != null && sources.isEmpty()) {
            if (exception instanceof CoreException) {
                throw (CoreException)exception;
            }
            this.abort(SourceLookupMessages.AbstractSourceLookupDirector_10, exception);
        }
        return sources.toArray();
    }

    public Object getSourceElement(Object element) {
        List sources = this.doSourceLookup(element);
        if (sources.size() == 1) {
            return sources.get(0);
        }
        if (sources.size() > 1) {
            return this.resolveSourceElement(element, sources);
        }
        return null;
    }

    private void setCurrentParticipant(ISourceLookupParticipant participant) {
        this.fCurrentParticipant = participant;
    }

    public ISourceLookupParticipant getCurrentParticipant() {
        return this.fCurrentParticipant;
    }

    static /* synthetic */ void access$0(AbstractSourceLookupDirector abstractSourceLookupDirector, ISourceLookupParticipant iSourceLookupParticipant) {
        abstractSourceLookupDirector.setCurrentParticipant(iSourceLookupParticipant);
    }

    static /* synthetic */ boolean access$1(AbstractSourceLookupDirector abstractSourceLookupDirector, Object object, List list) {
        return abstractSourceLookupDirector.checkDuplicate(object, list);
    }

    class SourceLookupQuery
    implements ISafeRunnable {
        private List fSourceElements = new ArrayList();
        private Object fElement = null;
        private Throwable fException = null;

        SourceLookupQuery(Object element) {
            this.fElement = element;
        }

        public void handleException(Throwable exception) {
            this.fException = exception;
        }

        public Throwable getException() {
            return this.fException;
        }

        /*
         * Unable to fully structure code
         */
        public void run() throws Exception {
            multiStatus = null;
            single = null;
            participants = AbstractSourceLookupDirector.this.getParticipants();
            try {
                i = 0;
                while (i < participants.length) {
                    AbstractSourceLookupDirector.access$0(AbstractSourceLookupDirector.this, participants[i]);
                    try {
                        block18: {
                            sourceArray = participants[i].findSourceElements(this.fElement);
                            if (sourceArray == null || sourceArray.length <= 0) ** GOTO lbl34
                            if (!AbstractSourceLookupDirector.this.isFindDuplicates()) break block18;
                            j = 0;
                            while (j < sourceArray.length) {
                                if (!AbstractSourceLookupDirector.access$1(AbstractSourceLookupDirector.this, sourceArray[j], this.fSourceElements)) {
                                    this.fSourceElements.add(sourceArray[j]);
                                }
                                ++j;
                            }
                            ** GOTO lbl34
                        }
                        this.fSourceElements.add(sourceArray[0]);
                        return;
                    }
                    catch (CoreException e) {
                        if (single == null) {
                            single = e;
                        } else if (multiStatus == null) {
                            multiStatus = new MultiStatus(DebugPlugin.getUniqueIdentifier(), 125, new IStatus[]{single.getStatus()}, SourceLookupMessages.Source_Lookup_Error, null);
                            multiStatus.add(e.getStatus());
                        } else {
                            multiStatus.add(e.getStatus());
                        }
lbl34:
                        // 5 sources

                        ++i;
                    }
                }
            }
            finally {
                AbstractSourceLookupDirector.access$0(AbstractSourceLookupDirector.this, null);
            }
            if (this.fSourceElements.isEmpty()) {
                if (multiStatus != null) {
                    this.fException = new CoreException(multiStatus);
                } else if (single != null) {
                    this.fException = single;
                }
            }
        }

        public List getSourceElements() {
            return this.fSourceElements;
        }

        public void dispose() {
            this.fElement = null;
            this.fSourceElements = null;
            this.fException = null;
        }
    }
}

