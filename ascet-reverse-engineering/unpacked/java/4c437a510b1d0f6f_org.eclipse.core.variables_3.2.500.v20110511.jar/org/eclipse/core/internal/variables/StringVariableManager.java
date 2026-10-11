/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.core.internal.variables;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.eclipse.core.internal.variables.ContributedValueVariable;
import org.eclipse.core.internal.variables.DynamicVariable;
import org.eclipse.core.internal.variables.StringSubstitutionEngine;
import org.eclipse.core.internal.variables.StringVariable;
import org.eclipse.core.internal.variables.ValueVariable;
import org.eclipse.core.internal.variables.VariablesMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IStringVariable;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.IValueVariable;
import org.eclipse.core.variables.IValueVariableListener;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.osgi.util.NLS;
import org.osgi.service.prefs.BackingStoreException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.helpers.DefaultHandler;

public class StringVariableManager
implements IStringVariableManager,
IEclipsePreferences.IPreferenceChangeListener {
    private Map fDynamicVariables;
    private Map fValueVariables;
    private ListenerList fListeners = new ListenerList();
    private static final int ADDED = 0;
    private static final int CHANGED = 1;
    private static final int REMOVED = 2;
    private static StringVariableManager fgManager;
    private boolean fInternalChange = false;
    private static final String ATTR_NAME = "name";
    private static final String ATTR_DESCRIPTION = "description";
    private static final String ATTR_READ_ONLY = "readOnly";
    private static final String VALUE_VARIABLES_TAG = "valueVariables";
    private static final String VALUE_VARIABLE_TAG = "valueVariable";
    private static final String NAME_TAG = "name";
    private static final String VALUE_TAG = "value";
    private static final String DESCRIPTION_TAG = "description";
    private static final String READ_ONLY_TAG = "readOnly";
    private static final String TRUE_VALUE = "true";
    private static final String FALSE_VALUE = "false";
    private static final String PREF_VALUE_VARIABLES;

    static {
        PREF_VALUE_VARIABLES = String.valueOf(VariablesPlugin.getUniqueIdentifier()) + ".valueVariables";
    }

    private StringVariableNotifier getNotifier() {
        return new StringVariableNotifier();
    }

    public static StringVariableManager getDefault() {
        if (fgManager == null) {
            fgManager = new StringVariableManager();
        }
        return fgManager;
    }

    private StringVariableManager() {
    }

    private synchronized void initialize() {
        if (this.fDynamicVariables == null) {
            this.fInternalChange = true;
            this.fDynamicVariables = new HashMap(5);
            this.fValueVariables = new HashMap(5);
            this.loadContributedValueVariables();
            this.loadPersistedValueVariables();
            this.loadDynamicVariables();
            InstanceScope.INSTANCE.getNode("org.eclipse.core.variables").addPreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this);
            this.fInternalChange = false;
        }
    }

    private void loadDynamicVariables() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.variables", "dynamicVariables");
        IConfigurationElement[] elements = point.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            String name = element.getAttribute("name");
            if (name == null) {
                VariablesPlugin.logMessage(NLS.bind((String)"Variable extension missing required 'name' attribute: {0}", (Object[])new String[]{element.getDeclaringExtension().getLabel()}), null);
            } else {
                String description = element.getAttribute("description");
                DynamicVariable variable = new DynamicVariable(name, description, element);
                DynamicVariable old = this.fDynamicVariables.put(variable.getName(), variable);
                if (old != null) {
                    DynamicVariable oldVariable = old;
                    VariablesPlugin.logMessage(NLS.bind((String)"Dynamic variable extension from bundle ''{0}'' overrides existing extension variable ''{1}'' from bundle ''{2}''", (Object[])new String[]{element.getDeclaringExtension().getContributor().getName(), oldVariable.getName(), oldVariable.getConfigurationElement().getDeclaringExtension().getContributor().getName()}), null);
                }
            }
            ++i;
        }
    }

    private void loadContributedValueVariables() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.variables", VALUE_VARIABLES_TAG);
        IConfigurationElement[] elements = point.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            String name = element.getAttribute("name");
            if (name == null) {
                VariablesPlugin.logMessage(NLS.bind((String)"Variable extension missing required 'name' attribute: {0}", (Object[])new String[]{element.getDeclaringExtension().getLabel()}), null);
            } else {
                boolean isReadOnly;
                String description = element.getAttribute("description");
                ContributedValueVariable variable = new ContributedValueVariable(name, description, isReadOnly = TRUE_VALUE.equals(element.getAttribute("readOnly")), element);
                ContributedValueVariable old = this.fValueVariables.put(name, variable);
                if (old != null) {
                    StringVariable oldVariable = old;
                    VariablesPlugin.logMessage(NLS.bind((String)"Contributed variable extension from bundle ''{0}'' overrides existing extension variable ''{1}'' from  bundle ''{2}''", (Object[])new String[]{element.getDeclaringExtension().getContributor().getName(), oldVariable.getName(), oldVariable.getConfigurationElement().getDeclaringExtension().getContributor().getName()}), null);
                }
            }
            ++i;
        }
    }

    private void loadPersistedValueVariables() {
        String variablesString = Platform.getPreferencesService().getString("org.eclipse.core.variables", PREF_VALUE_VARIABLES, "", null);
        if (variablesString.length() == 0) {
            return;
        }
        Element root = null;
        try {
            ByteArrayInputStream stream = new ByteArrayInputStream(variablesString.getBytes("UTF-8"));
            DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            parser.setErrorHandler(new DefaultHandler());
            root = parser.parse(stream).getDocumentElement();
        }
        catch (Exception e) {
            VariablesPlugin.logMessage("An exception occurred while loading persisted value variables.", e);
            return;
        }
        if (!root.getNodeName().equals(VALUE_VARIABLES_TAG)) {
            VariablesPlugin.logMessage("Invalid format encountered while loading persisted value variables.", null);
            return;
        }
        NodeList list = root.getChildNodes();
        int i = 0;
        int numItems = list.getLength();
        while (i < numItems) {
            Node node = list.item(i);
            if (node.getNodeType() == 1) {
                Element element = (Element)node;
                if (!element.getNodeName().equals(VALUE_VARIABLE_TAG)) {
                    VariablesPlugin.logMessage(NLS.bind((String)"Invalid XML element encountered while loading value variables: {0}", (Object[])new String[]{node.getNodeName()}), null);
                } else {
                    String name = element.getAttribute("name");
                    if (name.length() > 0) {
                        String value = element.getAttribute(VALUE_TAG);
                        String description = element.getAttribute("description");
                        boolean readOnly = TRUE_VALUE.equals(element.getAttribute("readOnly"));
                        IValueVariable existing = this.getValueVariable(name);
                        if (existing == null) {
                            ValueVariable variable = new ValueVariable(name, description, readOnly, value);
                            this.fValueVariables.put(name, variable);
                        } else if (!existing.isReadOnly() && value != null) {
                            existing.setValue(value);
                        }
                    } else {
                        VariablesPlugin.logMessage("Invalid variable entry encountered while loading value variables. Variable name is null.", null);
                    }
                }
            }
            ++i;
        }
    }

    public synchronized IStringVariable[] getVariables() {
        this.initialize();
        ArrayList list = new ArrayList(this.fDynamicVariables.size() + this.fValueVariables.size());
        list.addAll(this.fDynamicVariables.values());
        list.addAll(this.fValueVariables.values());
        return list.toArray(new IStringVariable[list.size()]);
    }

    public synchronized IValueVariable[] getValueVariables() {
        this.initialize();
        return this.fValueVariables.values().toArray(new IValueVariable[this.fValueVariables.size()]);
    }

    public synchronized IDynamicVariable[] getDynamicVariables() {
        this.initialize();
        return this.fDynamicVariables.values().toArray(new IDynamicVariable[this.fDynamicVariables.size()]);
    }

    public String performStringSubstitution(String expression) throws CoreException {
        return this.performStringSubstitution(expression, true);
    }

    public IValueVariable newValueVariable(String name, String description) {
        return this.newValueVariable(name, description, false, null);
    }

    public IValueVariable newValueVariable(String name, String description, boolean readOnly, String value) {
        return new ValueVariable(name, description, readOnly, value);
    }

    public synchronized void addVariables(IValueVariable[] variables) throws CoreException {
        IValueVariable variable;
        this.initialize();
        MultiStatus status = new MultiStatus(VariablesPlugin.getUniqueIdentifier(), 120, VariablesMessages.StringVariableManager_26, null);
        int i = 0;
        while (i < variables.length) {
            variable = variables[i];
            if (this.getValueVariable(variable.getName()) != null) {
                status.add((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 120, NLS.bind((String)VariablesMessages.StringVariableManager_27, (Object[])new String[]{variable.getName()}), null));
            }
            ++i;
        }
        if (status.isOK()) {
            i = 0;
            while (i < variables.length) {
                variable = variables[i];
                this.fValueVariables.put(variable.getName(), variable);
                ++i;
            }
            IValueVariable[] copy = new IValueVariable[variables.length];
            System.arraycopy(variables, 0, copy, 0, variables.length);
            this.getNotifier().notify(copy, 0);
            return;
        }
        throw new CoreException((IStatus)status);
    }

    public synchronized void removeVariables(IValueVariable[] variables) {
        this.initialize();
        ArrayList<IValueVariable> removed = new ArrayList<IValueVariable>(variables.length);
        int i = 0;
        while (i < variables.length) {
            IValueVariable variable = variables[i];
            if (this.fValueVariables.remove(variable.getName()) != null) {
                removed.add(variable);
            }
            ++i;
        }
        if (removed.size() > 0) {
            this.getNotifier().notify(removed.toArray(new IValueVariable[removed.size()]), 2);
        }
    }

    public synchronized IDynamicVariable getDynamicVariable(String name) {
        this.initialize();
        return (IDynamicVariable)this.fDynamicVariables.get(name);
    }

    public synchronized IValueVariable getValueVariable(String name) {
        this.initialize();
        return (IValueVariable)this.fValueVariables.get(name);
    }

    public void addValueVariableListener(IValueVariableListener listener) {
        this.fListeners.add((Object)listener);
    }

    public void removeValueVariableListener(IValueVariableListener listener) {
        this.fListeners.remove((Object)listener);
    }

    private String getValueVariablesAsXML() throws IOException, ParserConfigurationException, TransformerException {
        IValueVariable[] variables = this.getValueVariables();
        Document document = this.getDocument();
        Element rootElement = document.createElement(VALUE_VARIABLES_TAG);
        document.appendChild(rootElement);
        int i = 0;
        while (i < variables.length) {
            IValueVariable variable = variables[i];
            if (!(variable.isReadOnly() || variable.isContributed() && !((ContributedValueVariable)variable).isInitialized())) {
                Element element = document.createElement(VALUE_VARIABLE_TAG);
                element.setAttribute("name", variable.getName());
                String value = variable.getValue();
                if (value != null) {
                    element.setAttribute(VALUE_TAG, value);
                }
                element.setAttribute("readOnly", variable.isReadOnly() ? TRUE_VALUE : FALSE_VALUE);
                String description = variable.getDescription();
                if (description != null) {
                    element.setAttribute("description", description);
                }
                rootElement.appendChild(element);
            }
            ++i;
        }
        return this.serializeDocument(document);
    }

    private Document getDocument() throws ParserConfigurationException {
        DocumentBuilderFactory dfactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = dfactory.newDocumentBuilder();
        Document doc = docBuilder.newDocument();
        return doc;
    }

    private String serializeDocument(Document doc) throws TransformerException, UnsupportedEncodingException {
        ByteArrayOutputStream s = new ByteArrayOutputStream();
        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();
        transformer.setOutputProperty("method", "xml");
        transformer.setOutputProperty("indent", "yes");
        DOMSource source = new DOMSource(doc);
        StreamResult outputTarget = new StreamResult(s);
        transformer.transform(source, outputTarget);
        return s.toString("UTF8");
    }

    private synchronized void storeValueVariables() {
        String variableString = "";
        if (!this.fValueVariables.isEmpty()) {
            try {
                variableString = this.getValueVariablesAsXML();
            }
            catch (IOException e) {
                VariablesPlugin.log((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 4, "An exception occurred while storing launch configuration variables.", (Throwable)e));
                return;
            }
            catch (ParserConfigurationException e) {
                VariablesPlugin.log((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 4, "An exception occurred while storing launch configuration variables.", (Throwable)e));
                return;
            }
            catch (TransformerException e) {
                VariablesPlugin.log((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 4, "An exception occurred while storing launch configuration variables.", (Throwable)e));
                return;
            }
        }
        this.fInternalChange = true;
        try {
            IEclipsePreferences prefs = InstanceScope.INSTANCE.getNode("org.eclipse.core.variables");
            prefs.put(PREF_VALUE_VARIABLES, variableString);
            prefs.flush();
        }
        catch (BackingStoreException bse) {
            VariablesPlugin.log(bse);
        }
        this.fInternalChange = false;
    }

    protected void notifyChanged(IValueVariable variable) {
        IValueVariable existing;
        if (!this.fInternalChange && variable.equals(existing = this.getValueVariable(variable.getName()))) {
            this.getNotifier().notify(new IValueVariable[]{variable}, 1);
        }
    }

    public String generateVariableExpression(String varName, String arg) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("${");
        buffer.append(varName);
        if (arg != null) {
            buffer.append(":");
            buffer.append(arg);
        }
        buffer.append("}");
        return buffer.toString();
    }

    public String performStringSubstitution(String expression, boolean reportUndefinedVariables) throws CoreException {
        return new StringSubstitutionEngine().performStringSubstitution(expression, reportUndefinedVariables, true, this);
    }

    public void validateStringVariables(String expression) throws CoreException {
        new StringSubstitutionEngine().validateStringVariables(expression, this);
    }

    public String getContributingPluginId(IStringVariable variable) {
        if (variable instanceof StringVariable) {
            return ((StringVariable)variable).getConfigurationElement().getContributor().getName();
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
        if (PREF_VALUE_VARIABLES.equals(event.getKey())) {
            StringVariableManager stringVariableManager = this;
            synchronized (stringVariableManager) {
                if (!this.fInternalChange) {
                    this.fValueVariables.clear();
                    this.loadPersistedValueVariables();
                    this.loadContributedValueVariables();
                }
            }
        }
    }

    class StringVariableNotifier
    implements ISafeRunnable {
        private IValueVariableListener fListener;
        private int fType;
        private IValueVariable[] fVariables;

        StringVariableNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, VariablesPlugin.getUniqueIdentifier(), 120, "An exception occurred during string variable change notification", exception);
            VariablesPlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 0: {
                    this.fListener.variablesAdded(this.fVariables);
                    break;
                }
                case 2: {
                    this.fListener.variablesRemoved(this.fVariables);
                    break;
                }
                case 1: {
                    this.fListener.variablesChanged(this.fVariables);
                }
            }
        }

        public void notify(IValueVariable[] variables, int update) {
            this.fVariables = variables;
            this.fType = update;
            Object[] copiedListeners = StringVariableManager.this.fListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (IValueVariableListener)copiedListeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fVariables = null;
            this.fListener = null;
            StringVariableManager.this.storeValueVariables();
        }
    }
}

