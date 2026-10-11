/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.fieldassist.ControlDecoration
 *  org.eclipse.jface.fieldassist.FieldDecoration
 *  org.eclipse.jface.fieldassist.FieldDecorationRegistry
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.ui.internal.forms;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.fieldassist.ControlDecoration;
import org.eclipse.jface.fieldassist.FieldDecoration;
import org.eclipse.jface.fieldassist.FieldDecorationRegistry;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.ui.forms.IMessage;
import org.eclipse.ui.forms.IMessageManager;
import org.eclipse.ui.forms.IMessagePrefixProvider;
import org.eclipse.ui.forms.widgets.Form;
import org.eclipse.ui.forms.widgets.Hyperlink;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.internal.forms.Messages;

public class MessageManager
implements IMessageManager {
    private static final DefaultPrefixProvider DEFAULT_PREFIX_PROVIDER = new DefaultPrefixProvider();
    private ArrayList messages = new ArrayList();
    private ArrayList oldMessages;
    private Hashtable decorators = new Hashtable();
    private Hashtable oldDecorators;
    private boolean autoUpdate = true;
    private Form form;
    private IMessagePrefixProvider prefixProvider = DEFAULT_PREFIX_PROVIDER;
    private int decorationPosition = 17408;
    private static FieldDecoration standardError = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_ERROR");
    private static FieldDecoration standardWarning = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_WARNING");
    private static FieldDecoration standardInformation = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_INFORMATION");
    private static final String[] SINGLE_MESSAGE_SUMMARY_KEYS = new String[]{Messages.MessageManager_sMessageSummary, Messages.MessageManager_sMessageSummary, Messages.MessageManager_sWarningSummary, Messages.MessageManager_sErrorSummary};
    private static final String[] MULTIPLE_MESSAGE_SUMMARY_KEYS = new String[]{Messages.MessageManager_pMessageSummary, Messages.MessageManager_pMessageSummary, Messages.MessageManager_pWarningSummary, Messages.MessageManager_pErrorSummary};

    public MessageManager(ScrolledForm scrolledForm) {
        this.form = scrolledForm.getForm();
    }

    public MessageManager(Form form) {
        this.form = form;
    }

    public void addMessage(Object key, String messageText, Object data, int type) {
        this.addMessage(null, key, messageText, data, type, this.messages);
        if (this.isAutoUpdate()) {
            this.updateForm();
        }
    }

    public void addMessage(Object key, String messageText, Object data, int type, Control control) {
        ControlDecorator dec = (ControlDecorator)this.decorators.get(control);
        if (dec == null) {
            dec = new ControlDecorator(control);
            this.decorators.put(control, dec);
        }
        dec.addMessage(key, messageText, data, type);
        if (this.isAutoUpdate()) {
            this.updateForm();
        }
    }

    public void removeMessage(Object key) {
        Message message = this.findMessage(key, this.messages);
        if (message != null) {
            this.messages.remove(message);
            if (this.isAutoUpdate()) {
                this.updateForm();
            }
        }
    }

    public void removeMessages() {
        if (!this.messages.isEmpty()) {
            this.messages.clear();
            if (this.isAutoUpdate()) {
                this.updateForm();
            }
        }
    }

    public void removeMessage(Object key, Control control) {
        ControlDecorator dec = (ControlDecorator)this.decorators.get(control);
        if (dec == null) {
            return;
        }
        if (dec.removeMessage(key) && this.isAutoUpdate()) {
            this.updateForm();
        }
    }

    public void removeMessages(Control control) {
        ControlDecorator dec = (ControlDecorator)this.decorators.get(control);
        if (dec != null && dec.removeMessages() && this.isAutoUpdate()) {
            this.updateForm();
        }
    }

    public void removeAllMessages() {
        boolean needsUpdate = false;
        Enumeration enm = this.decorators.elements();
        while (enm.hasMoreElements()) {
            ControlDecorator control = (ControlDecorator)enm.nextElement();
            if (!control.removeMessages()) continue;
            needsUpdate = true;
        }
        if (!this.messages.isEmpty()) {
            this.messages.clear();
            needsUpdate = true;
        }
        if (needsUpdate && this.isAutoUpdate()) {
            this.updateForm();
        }
    }

    private Message addMessage(String prefix, Object key, String messageText, Object data, int type, ArrayList list) {
        Message message = this.findMessage(key, list);
        if (message == null) {
            message = new Message(key, messageText, type, data);
            message.prefix = prefix;
            list.add(message);
        } else {
            message.message = messageText;
            message.type = type;
            message.data = data;
        }
        return message;
    }

    private Message findMessage(Object key, ArrayList list) {
        int i = 0;
        while (i < list.size()) {
            Message message = (Message)list.get(i);
            if (message.getKey().equals(key)) {
                return message;
            }
            ++i;
        }
        return null;
    }

    public void update() {
        Iterator iter = this.decorators.values().iterator();
        while (iter.hasNext()) {
            ControlDecorator dec = (ControlDecorator)iter.next();
            dec.update();
        }
        this.updateForm();
    }

    private void updateForm() {
        ArrayList mergedList = new ArrayList();
        mergedList.addAll(this.messages);
        Enumeration enm = this.decorators.elements();
        while (enm.hasMoreElements()) {
            ControlDecorator dec = (ControlDecorator)enm.nextElement();
            dec.addAll(mergedList);
        }
        this.update(mergedList);
    }

    private void update(ArrayList mergedList) {
        this.pruneControlDecorators();
        if (this.form.getHead().getBounds().height == 0 || mergedList.isEmpty() || mergedList == null) {
            this.form.setMessage(null, 0);
            return;
        }
        ArrayList peers = this.createPeers(mergedList);
        int maxType = ((IMessage)peers.get(0)).getMessageType();
        IMessage[] array = peers.toArray(new IMessage[peers.size()]);
        if (peers.size() == 1 && ((Message)peers.get((int)0)).prefix == null) {
            IMessage message = (IMessage)peers.get(0);
            String messageText = message.getMessage();
            this.form.setMessage(messageText, maxType, array);
        } else {
            String messageText = peers.size() > 1 ? Messages.bind((String)MULTIPLE_MESSAGE_SUMMARY_KEYS[maxType], (Object[])new String[]{String.valueOf(peers.size())}) : SINGLE_MESSAGE_SUMMARY_KEYS[maxType];
            this.form.setMessage(messageText, maxType, array);
        }
    }

    private static String getFullMessage(IMessage message) {
        if (message.getPrefix() == null) {
            return message.getMessage();
        }
        return String.valueOf(message.getPrefix()) + message.getMessage();
    }

    private ArrayList createPeers(ArrayList messages) {
        ArrayList<Message> peers = new ArrayList<Message>();
        int maxType = 0;
        int i = 0;
        while (i < messages.size()) {
            Message message = (Message)messages.get(i);
            if (message.type > maxType) {
                peers.clear();
                maxType = message.type;
            }
            if (message.type == maxType) {
                peers.add(message);
            }
            ++i;
        }
        return peers;
    }

    private String createDetails(ArrayList messages, boolean excludePrefix) {
        StringWriter sw = new StringWriter();
        PrintWriter out = new PrintWriter(sw);
        int i = 0;
        while (i < messages.size()) {
            if (i > 0) {
                out.println();
            }
            IMessage m = (IMessage)messages.get(i);
            out.print(excludePrefix ? m.getMessage() : MessageManager.getFullMessage(m));
            ++i;
        }
        out.flush();
        return sw.toString();
    }

    public static String createDetails(IMessage[] messages) {
        if (messages == null || messages.length == 0) {
            return null;
        }
        StringWriter sw = new StringWriter();
        PrintWriter out = new PrintWriter(sw);
        int i = 0;
        while (i < messages.length) {
            if (i > 0) {
                out.println();
            }
            out.print(MessageManager.getFullMessage(messages[i]));
            ++i;
        }
        out.flush();
        return sw.toString();
    }

    public String createSummary(IMessage[] messages) {
        return MessageManager.createDetails(messages);
    }

    private void pruneControlDecorators() {
        Iterator iter = this.decorators.values().iterator();
        while (iter.hasNext()) {
            ControlDecorator dec = (ControlDecorator)iter.next();
            if (!dec.isDisposed()) continue;
            iter.remove();
        }
    }

    public IMessagePrefixProvider getMessagePrefixProvider() {
        return this.prefixProvider;
    }

    public void setMessagePrefixProvider(IMessagePrefixProvider provider) {
        this.prefixProvider = provider;
        Iterator iter = this.decorators.values().iterator();
        while (iter.hasNext()) {
            ControlDecorator dec = (ControlDecorator)iter.next();
            dec.updatePrefix();
        }
    }

    public int getDecorationPosition() {
        return this.decorationPosition;
    }

    public void setDecorationPosition(int position) {
        this.decorationPosition = position;
        Iterator iter = this.decorators.values().iterator();
        while (iter.hasNext()) {
            ControlDecorator dec = (ControlDecorator)iter.next();
            dec.updatePosition();
        }
    }

    public boolean isAutoUpdate() {
        return this.autoUpdate;
    }

    public void setAutoUpdate(boolean autoUpdate) {
        boolean needsCaching = this.autoUpdate && !autoUpdate;
        boolean needsUpdate = !this.autoUpdate && autoUpdate;
        this.autoUpdate = autoUpdate;
        if (needsUpdate && this.isCacheChanged()) {
            this.update();
        }
        if (needsCaching) {
            this.oldMessages = new ArrayList();
            Iterator i = this.messages.iterator();
            while (i.hasNext()) {
                this.oldMessages.add(new Message((Message)i.next()));
            }
            this.oldDecorators = new Hashtable();
            Enumeration e = this.decorators.keys();
            while (e.hasMoreElements()) {
                Object key = e.nextElement();
                this.oldDecorators.put(key, new ControlDecorator((ControlDecorator)this.decorators.get(key)));
            }
        }
    }

    private boolean isCacheChanged() {
        boolean result = false;
        result = this.checkMessageCache() || this.checkDecoratorCache();
        this.oldMessages.clear();
        this.oldMessages = null;
        this.oldDecorators.clear();
        this.oldDecorators = null;
        return result;
    }

    private boolean checkMessageCache() {
        if (this.oldMessages == null) {
            return false;
        }
        if (this.messages.size() != this.oldMessages.size()) {
            return true;
        }
        return !this.oldMessages.containsAll(this.messages);
    }

    private boolean checkDecoratorCache() {
        if (this.oldDecorators == null) {
            return false;
        }
        Iterator i = this.decorators.entrySet().iterator();
        while (i.hasNext()) {
            Map.Entry next = i.next();
            ControlDecorator cd = (ControlDecorator)next.getValue();
            ControlDecorator oldCd = (ControlDecorator)this.oldDecorators.get(cd.decoration.getControl());
            if ((oldCd != null || cd.controlMessages.size() <= 0) && (oldCd == null || cd.hasSameMessages(oldCd))) continue;
            return true;
        }
        return false;
    }

    class ControlDecorator {
        private ControlDecoration decoration;
        private ArrayList controlMessages = new ArrayList();
        private String prefix;

        ControlDecorator(Control control) {
            this.decoration = new ControlDecoration(control, MessageManager.this.decorationPosition, MessageManager.this.form.getBody());
        }

        private ControlDecorator(ControlDecorator cd) {
            this.decoration = cd.decoration;
            this.prefix = cd.prefix;
            Iterator i = cd.controlMessages.iterator();
            while (i.hasNext()) {
                this.controlMessages.add(new Message((Message)i.next()));
            }
        }

        public boolean isDisposed() {
            return this.decoration.getControl() == null;
        }

        void updatePrefix() {
            this.prefix = null;
        }

        void updatePosition() {
            Control control = this.decoration.getControl();
            this.decoration.dispose();
            this.decoration = new ControlDecoration(control, MessageManager.this.decorationPosition, MessageManager.this.form.getBody());
            this.update();
        }

        String getPrefix() {
            if (this.prefix == null) {
                this.createPrefix();
            }
            return this.prefix;
        }

        private void createPrefix() {
            if (MessageManager.this.prefixProvider == null) {
                this.prefix = "";
                return;
            }
            this.prefix = MessageManager.this.prefixProvider.getPrefix(this.decoration.getControl());
            if (this.prefix == null) {
                this.prefix = "";
            }
        }

        void addAll(ArrayList target) {
            target.addAll(this.controlMessages);
        }

        void addMessage(Object key, String text, Object data, int type) {
            Message message = MessageManager.this.addMessage(this.getPrefix(), key, text, data, type, this.controlMessages);
            message.control = this.decoration.getControl();
            if (MessageManager.this.isAutoUpdate()) {
                this.update();
            }
        }

        boolean removeMessage(Object key) {
            Message message = MessageManager.this.findMessage(key, this.controlMessages);
            if (message != null) {
                this.controlMessages.remove(message);
                if (MessageManager.this.isAutoUpdate()) {
                    this.update();
                }
            }
            return message != null;
        }

        boolean removeMessages() {
            if (this.controlMessages.isEmpty()) {
                return false;
            }
            this.controlMessages.clear();
            if (MessageManager.this.isAutoUpdate()) {
                this.update();
            }
            return true;
        }

        public void update() {
            if (this.controlMessages.isEmpty()) {
                this.decoration.setDescriptionText(null);
                this.decoration.hide();
            } else {
                ArrayList peers = MessageManager.this.createPeers(this.controlMessages);
                int type = ((IMessage)peers.get(0)).getMessageType();
                String description = MessageManager.this.createDetails(MessageManager.this.createPeers(peers), true);
                if (type == 3) {
                    this.decoration.setImage(standardError.getImage());
                } else if (type == 2) {
                    this.decoration.setImage(standardWarning.getImage());
                } else if (type == 1) {
                    this.decoration.setImage(standardInformation.getImage());
                }
                this.decoration.setDescriptionText(description);
                this.decoration.show();
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ControlDecorator)) {
                return false;
            }
            ControlDecorator cd = (ControlDecorator)obj;
            if (!cd.decoration.equals(this.decoration)) {
                return false;
            }
            return cd.getPrefix().equals(this.getPrefix());
        }

        boolean hasSameMessages(ControlDecorator cd) {
            if (cd.controlMessages.size() != this.controlMessages.size()) {
                return false;
            }
            return cd.controlMessages.containsAll(this.controlMessages);
        }
    }

    static class DefaultPrefixProvider
    implements IMessagePrefixProvider {
        DefaultPrefixProvider() {
        }

        public String getPrefix(Control c) {
            Composite parent = c.getParent();
            Control[] siblings = parent.getChildren();
            int i = 0;
            while (i < siblings.length) {
                if (siblings[i] == c) {
                    int j = i - 1;
                    while (j >= 0) {
                        Control label = siblings[j];
                        String ltext = null;
                        if (label instanceof Label) {
                            ltext = ((Label)label).getText();
                        } else if (label instanceof Hyperlink) {
                            ltext = ((Hyperlink)label).getText();
                        } else if (label instanceof CLabel) {
                            ltext = ((CLabel)label).getText();
                        }
                        if (ltext != null) {
                            if (!ltext.endsWith(":")) {
                                return String.valueOf(ltext) + ": ";
                            }
                            return String.valueOf(ltext) + " ";
                        }
                        --j;
                    }
                    break;
                }
                ++i;
            }
            return null;
        }
    }

    static class Message
    implements IMessage {
        Control control;
        Object data;
        Object key;
        String message;
        int type;
        String prefix;

        Message(Object key, String message, int type, Object data) {
            this.key = key;
            this.message = message;
            this.type = type;
            this.data = data;
        }

        private Message(Message message) {
            this.key = message.key;
            this.message = message.message;
            this.type = message.type;
            this.data = message.data;
            this.prefix = message.prefix;
            this.control = message.control;
        }

        public Object getKey() {
            return this.key;
        }

        public String getMessage() {
            return this.message;
        }

        public int getMessageType() {
            return this.type;
        }

        public Control getControl() {
            return this.control;
        }

        public Object getData() {
            return this.data;
        }

        public String getPrefix() {
            return this.prefix;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Message)) {
                return false;
            }
            Message msg = (Message)obj;
            return (msg.getPrefix() == null ? this.getPrefix() == null : msg.getPrefix().equals(this.getPrefix())) && (msg.getControl() == null ? this.getControl() == null : msg.getControl().equals(this.getControl())) && msg.getMessageType() == this.getMessageType() && (msg.getMessage() == null ? this.getMessage() == null : msg.getMessage().equals(this.getMessage())) && msg.getKey().equals(this.getKey());
        }
    }
}

