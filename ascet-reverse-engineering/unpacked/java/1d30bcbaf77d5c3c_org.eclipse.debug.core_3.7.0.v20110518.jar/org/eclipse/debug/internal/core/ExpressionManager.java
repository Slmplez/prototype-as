/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IExpressionListener;
import org.eclipse.debug.core.IExpressionManager;
import org.eclipse.debug.core.IExpressionsListener;
import org.eclipse.debug.core.model.IExpression;
import org.eclipse.debug.core.model.IWatchExpression;
import org.eclipse.debug.core.model.IWatchExpressionDelegate;
import org.eclipse.debug.internal.core.IExpressionsListener2;
import org.eclipse.debug.internal.core.LaunchManager;
import org.eclipse.debug.internal.core.Preferences;
import org.eclipse.debug.internal.core.WatchExpression;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ExpressionManager
extends PlatformObject
implements IExpressionManager {
    private Vector fExpressions = null;
    private ListenerList fListeners = null;
    private ListenerList fExpressionsListeners = null;
    private Map fWatchExpressionDelegates = new HashMap();
    private static final int ADDED = 1;
    private static final int CHANGED = 2;
    private static final int REMOVED = 3;
    private static final int INSERTED = 4;
    private static final int MOVED = 5;
    private static final String PREF_WATCH_EXPRESSIONS = "prefWatchExpressions";
    private static final String WATCH_EXPRESSIONS_TAG = "watchExpressions";
    private static final String EXPRESSION_TAG = "expression";
    private static final String TEXT_TAG = "text";
    private static final String ENABLED_TAG = "enabled";
    private static final String TRUE_VALUE = "true";
    private static final String FALSE_VALUE = "false";

    public ExpressionManager() {
        this.loadPersistedExpressions();
        this.loadWatchExpressionDelegates();
    }

    private void loadWatchExpressionDelegates() {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "watchExpressionDelegates");
        IConfigurationElement[] configurationElements = extensionPoint.getConfigurationElements();
        int i = 0;
        while (i < configurationElements.length) {
            String debugModel;
            IConfigurationElement element = configurationElements[i];
            if (element.getName().equals("watchExpressionDelegate") && (debugModel = element.getAttribute("debugModel")) != null && debugModel.length() != 0) {
                this.fWatchExpressionDelegates.put(debugModel, element);
            }
            ++i;
        }
    }

    public IWatchExpressionDelegate newWatchExpressionDelegate(String debugModel) {
        try {
            IConfigurationElement element = (IConfigurationElement)this.fWatchExpressionDelegates.get(debugModel);
            if (element != null) {
                return (IWatchExpressionDelegate)element.createExecutableExtension("delegateClass");
            }
            return null;
        }
        catch (CoreException e) {
            DebugPlugin.log(e);
            return null;
        }
    }

    public boolean hasWatchExpressionDelegate(String id) {
        IConfigurationElement element = (IConfigurationElement)this.fWatchExpressionDelegates.get(id);
        return element != null;
    }

    private void loadPersistedExpressions() {
        Element root;
        String expressionsString = Platform.getPreferencesService().getString(DebugPlugin.getUniqueIdentifier(), PREF_WATCH_EXPRESSIONS, "", null);
        if (expressionsString.length() == 0) {
            return;
        }
        try {
            root = DebugPlugin.parseDocument(expressionsString);
        }
        catch (CoreException e) {
            DebugPlugin.logMessage("An exception occurred while loading watch expressions.", e);
            return;
        }
        if (!root.getNodeName().equals(WATCH_EXPRESSIONS_TAG)) {
            DebugPlugin.logMessage("Invalid format encountered while loading watch expressions.", null);
            return;
        }
        NodeList list = root.getChildNodes();
        int i = 0;
        int numItems = list.getLength();
        while (i < numItems) {
            Node node = list.item(i);
            if (node.getNodeType() == 1) {
                Element element = (Element)node;
                if (!element.getNodeName().equals(EXPRESSION_TAG)) {
                    DebugPlugin.logMessage(MessageFormat.format((String)"Invalid XML element encountered while loading watch expressions: {0}", (Object[])new String[]{node.getNodeName()}), null);
                } else {
                    String expressionText = element.getAttribute(TEXT_TAG);
                    if (expressionText.length() > 0) {
                        boolean enabled = TRUE_VALUE.equals(element.getAttribute(ENABLED_TAG));
                        IWatchExpression expression = this.newWatchExpression(expressionText, enabled);
                        if (this.fExpressions == null) {
                            this.fExpressions = new Vector(list.getLength());
                        }
                        this.fExpressions.add(expression);
                    } else {
                        DebugPlugin.logMessage("Invalid expression entry encountered while loading watch expressions. Expression text is empty.", null);
                    }
                }
            }
            ++i;
        }
    }

    private IWatchExpression newWatchExpression(String expressionText, boolean enabled) {
        return new WatchExpression(expressionText, enabled);
    }

    public IWatchExpression newWatchExpression(String expressionText) {
        return new WatchExpression(expressionText);
    }

    public void storeWatchExpressions() {
        String expressionString = "";
        try {
            expressionString = this.getWatchExpressionsAsXML();
        }
        catch (IOException e) {
            DebugPlugin.log(e);
        }
        catch (ParserConfigurationException e) {
            DebugPlugin.log(e);
        }
        catch (TransformerException e) {
            DebugPlugin.log(e);
        }
        Preferences.setString(DebugPlugin.getUniqueIdentifier(), PREF_WATCH_EXPRESSIONS, expressionString, null);
    }

    private String getWatchExpressionsAsXML() throws IOException, ParserConfigurationException, TransformerException {
        IExpression[] expressions = this.getExpressions();
        Document document = LaunchManager.getDocument();
        Element rootElement = document.createElement(WATCH_EXPRESSIONS_TAG);
        document.appendChild(rootElement);
        int i = 0;
        while (i < expressions.length) {
            IExpression expression = expressions[i];
            if (expression instanceof IWatchExpression) {
                Element element = document.createElement(EXPRESSION_TAG);
                element.setAttribute(TEXT_TAG, expression.getExpressionText());
                element.setAttribute(ENABLED_TAG, ((IWatchExpression)expression).isEnabled() ? TRUE_VALUE : FALSE_VALUE);
                rootElement.appendChild(element);
            }
            ++i;
        }
        return LaunchManager.serializeDocument(document);
    }

    public void addExpression(IExpression expression) {
        this.addExpressions(new IExpression[]{expression});
    }

    public void addExpressions(IExpression[] expressions) {
        List added = this.doAdd(expressions);
        if (!added.isEmpty()) {
            this.fireUpdate(added.toArray(new IExpression[added.size()]), 1);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private List doAdd(IExpression[] expressions) {
        ArrayList<IExpression> added = new ArrayList<IExpression>(expressions.length);
        ExpressionManager expressionManager = this;
        synchronized (expressionManager) {
            if (this.fExpressions == null) {
                this.fExpressions = new Vector(expressions.length);
            }
            int i = 0;
            while (i < expressions.length) {
                IExpression expression = expressions[i];
                if (this.fExpressions.indexOf(expression) == -1) {
                    added.add(expression);
                    this.fExpressions.add(expression);
                }
                ++i;
            }
        }
        return added;
    }

    public synchronized IExpression[] getExpressions() {
        if (this.fExpressions == null) {
            return new IExpression[0];
        }
        Object[] temp = new IExpression[this.fExpressions.size()];
        this.fExpressions.copyInto(temp);
        return temp;
    }

    public synchronized IExpression[] getExpressions(String modelIdentifier) {
        if (this.fExpressions == null) {
            return new IExpression[0];
        }
        ArrayList<IExpression> temp = new ArrayList<IExpression>(this.fExpressions.size());
        Iterator iter = this.fExpressions.iterator();
        while (iter.hasNext()) {
            IExpression expression = (IExpression)iter.next();
            String id = expression.getModelIdentifier();
            if (id == null || !id.equals(modelIdentifier)) continue;
            temp.add(expression);
        }
        return temp.toArray(new IExpression[temp.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void insertExpressions(IExpression[] expressions, IExpression insertionLocation, boolean insertBefore) {
        List added = null;
        ArrayList<IExpression> inserted = null;
        int insertionIndex = -1;
        ExpressionManager expressionManager = this;
        synchronized (expressionManager) {
            if (this.fExpressions == null || (insertionIndex = this.fExpressions.indexOf(insertionLocation)) < 0) {
                added = this.doAdd(expressions);
            } else {
                if (!insertBefore) {
                    ++insertionIndex;
                }
                inserted = new ArrayList<IExpression>(expressions.length);
                int i = 0;
                while (i < expressions.length) {
                    IExpression expression = expressions[i];
                    if (this.fExpressions.indexOf(expression) == -1) {
                        this.fExpressions.add(insertionIndex + inserted.size(), expression);
                        inserted.add(expression);
                    }
                    ++i;
                }
            }
        }
        if (added != null) {
            if (!added.isEmpty()) {
                this.fireUpdate(added.toArray(new IExpression[added.size()]), 1);
            }
            return;
        }
        if (inserted != null && !inserted.isEmpty()) {
            this.fireUpdate(inserted.toArray(new IExpression[inserted.size()]), 4, insertionIndex);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void moveExpressions(IExpression[] expressions, IExpression insertionLocation, boolean insertBefore) {
        ArrayList<IExpression> movedExpressions = new ArrayList<IExpression>(expressions.length);
        int insertionIndex = -1;
        IExpression[] movedExpressionsArray = null;
        ExpressionManager expressionManager = this;
        synchronized (expressionManager) {
            if (this.fExpressions == null) {
                return;
            }
            insertionIndex = this.fExpressions.indexOf(insertionLocation);
            if (insertionIndex < 0) {
                return;
            }
            if (!insertBefore) {
                ++insertionIndex;
            }
            int i = 0;
            while (i < expressions.length) {
                int removeIndex = this.fExpressions.indexOf(expressions[i]);
                if (removeIndex >= 0) {
                    movedExpressions.add(expressions[i]);
                    if (removeIndex < insertionIndex) {
                        --insertionIndex;
                    }
                    this.fExpressions.remove(removeIndex);
                }
                ++i;
            }
            movedExpressionsArray = movedExpressions.toArray(new IExpression[movedExpressions.size()]);
            i = 0;
            while (i < movedExpressionsArray.length) {
                this.fExpressions.add(insertionIndex + i, movedExpressionsArray[i]);
                ++i;
            }
        }
        if (!movedExpressions.isEmpty()) {
            this.fireUpdate(movedExpressionsArray, 5, insertionIndex);
        }
    }

    public void removeExpression(IExpression expression) {
        this.removeExpressions(new IExpression[]{expression});
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeExpressions(IExpression[] expressions) {
        ArrayList<IExpression> removed = new ArrayList<IExpression>(expressions.length);
        ExpressionManager expressionManager = this;
        synchronized (expressionManager) {
            if (this.fExpressions == null) {
                return;
            }
            int i = 0;
            while (i < expressions.length) {
                IExpression expression = expressions[i];
                if (this.fExpressions.remove(expression)) {
                    removed.add(expression);
                }
                ++i;
            }
        }
        Iterator iterator = removed.iterator();
        while (iterator.hasNext()) {
            ((IExpression)iterator.next()).dispose();
        }
        if (!removed.isEmpty()) {
            this.fireUpdate(removed.toArray(new IExpression[removed.size()]), 3);
        }
    }

    public void addExpressionListener(IExpressionListener listener) {
        if (this.fListeners == null) {
            this.fListeners = new ListenerList();
        }
        this.fListeners.add((Object)listener);
    }

    public void removeExpressionListener(IExpressionListener listener) {
        if (this.fListeners == null) {
            return;
        }
        this.fListeners.remove((Object)listener);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void watchExpressionChanged(IWatchExpression expression) {
        boolean notify = false;
        ExpressionManager expressionManager = this;
        synchronized (expressionManager) {
            if (this.fExpressions != null && this.fExpressions.contains(expression)) {
                notify = true;
            }
        }
        if (notify) {
            this.fireUpdate(new IExpression[]{expression}, 2);
        }
    }

    private void fireUpdate(IExpression[] expressions, int update) {
        this.fireUpdate(expressions, update, -1);
    }

    private void fireUpdate(IExpression[] expressions, int update, int index) {
        this.getExpressionNotifier().notify(expressions, update);
        this.getExpressionsNotifier().notify(expressions, update, index);
    }

    public synchronized boolean hasExpressions() {
        return this.fExpressions != null && !this.fExpressions.isEmpty();
    }

    public void addExpressionListener(IExpressionsListener listener) {
        if (this.fExpressionsListeners == null) {
            this.fExpressionsListeners = new ListenerList();
        }
        this.fExpressionsListeners.add((Object)listener);
    }

    public void removeExpressionListener(IExpressionsListener listener) {
        if (this.fExpressionsListeners == null) {
            return;
        }
        this.fExpressionsListeners.remove((Object)listener);
    }

    private ExpressionNotifier getExpressionNotifier() {
        return new ExpressionNotifier();
    }

    private ExpressionsNotifier getExpressionsNotifier() {
        return new ExpressionsNotifier();
    }

    class ExpressionNotifier
    implements ISafeRunnable {
        private IExpressionListener fListener;
        private int fType;
        private IExpression fExpression;

        ExpressionNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "An exception occurred during expression change notification.", exception);
            DebugPlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 1: 
                case 4: {
                    this.fListener.expressionAdded(this.fExpression);
                    break;
                }
                case 3: {
                    this.fListener.expressionRemoved(this.fExpression);
                    break;
                }
                case 2: {
                    this.fListener.expressionChanged(this.fExpression);
                }
            }
        }

        public void notify(IExpression[] expressions, int update) {
            if (ExpressionManager.this.fListeners != null) {
                this.fType = update;
                Object[] copiedListeners = ExpressionManager.this.fListeners.getListeners();
                int i = 0;
                while (i < copiedListeners.length) {
                    this.fListener = (IExpressionListener)copiedListeners[i];
                    int j = 0;
                    while (j < expressions.length) {
                        this.fExpression = expressions[j];
                        SafeRunner.run((ISafeRunnable)this);
                        ++j;
                    }
                    ++i;
                }
            }
            this.fListener = null;
            this.fExpression = null;
        }
    }

    class ExpressionsNotifier
    implements ISafeRunnable {
        private IExpressionsListener fListener;
        private int fType;
        private int fIndex;
        private IExpression[] fNotifierExpressions;

        ExpressionsNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "An exception occurred during expression change notification.", exception);
            DebugPlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 5: {
                    if (this.fIndex < 0 || !(this.fListener instanceof IExpressionsListener2)) break;
                    ((IExpressionsListener2)this.fListener).expressionsMoved(this.fNotifierExpressions, this.fIndex);
                    break;
                }
                case 4: {
                    if (this.fIndex >= 0 && this.fListener instanceof IExpressionsListener2) {
                        ((IExpressionsListener2)this.fListener).expressionsInserted(this.fNotifierExpressions, this.fIndex);
                        break;
                    }
                    this.fListener.expressionsAdded(this.fNotifierExpressions);
                    break;
                }
                case 1: {
                    this.fListener.expressionsAdded(this.fNotifierExpressions);
                    break;
                }
                case 3: {
                    this.fListener.expressionsRemoved(this.fNotifierExpressions);
                    break;
                }
                case 2: {
                    this.fListener.expressionsChanged(this.fNotifierExpressions);
                }
            }
        }

        public void notify(IExpression[] expressions, int update, int index) {
            if (ExpressionManager.this.fExpressionsListeners != null) {
                this.fNotifierExpressions = expressions;
                this.fType = update;
                this.fIndex = index;
                Object[] copiedListeners = ExpressionManager.this.fExpressionsListeners.getListeners();
                int i = 0;
                while (i < copiedListeners.length) {
                    this.fListener = (IExpressionsListener)copiedListeners[i];
                    SafeRunner.run((ISafeRunnable)this);
                    ++i;
                }
            }
            this.fNotifierExpressions = null;
            this.fListener = null;
        }
    }
}

