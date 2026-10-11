/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.context;

import java.util.ArrayList;
import org.eclipse.help.ICommandLink;
import org.eclipse.help.IContext;
import org.eclipse.help.IContext2;
import org.eclipse.help.IContext3;
import org.eclipse.help.IHelpResource;
import org.eclipse.help.ITopic;
import org.eclipse.help.internal.CommandLink;
import org.eclipse.help.internal.Topic;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class Context
extends UAElement
implements IContext3 {
    public static final String ATTRIBUTE_TITLE = "title";
    public static final String NAME = "context";
    public static final String ELEMENT_DESCRIPTION = "description";
    public static final String ATTRIBUTE_ID = "id";
    public static final String ATTRIBUTE_PLUGIN_ID = "pluginId";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Context(Element src) {
        super(src);
    }

    public Context(IContext src, String id) {
        super(NAME);
        this.setId(id);
        this.children = new ArrayList();
        this.mergeContext(src);
    }

    public void mergeContext(IContext src) {
        int i;
        String title;
        String text = src.getText();
        if (this.getText() == null || this.getText().length() == 0) {
            this.setText(text);
        }
        if (src instanceof IContext2 && this.getTitle() == null && (title = ((IContext2)src).getTitle()) != null) {
            this.setAttribute(ATTRIBUTE_TITLE, title);
        }
        if (src instanceof IContext3) {
            ICommandLink[] commands = ((IContext3)src).getRelatedCommands();
            i = 0;
            while (i < commands.length) {
                this.appendChild(new CommandLink(commands[i]));
                ++i;
            }
        }
        IHelpResource[] topics = src.getRelatedTopics();
        i = 0;
        while (i < topics.length) {
            if (topics[i] instanceof ITopic) {
                this.appendChild(new Topic((ITopic)topics[i]));
            } else {
                Topic topic = new Topic();
                topic.setHref(topics[i].getHref());
                topic.setLabel(topics[i].getLabel());
                this.appendChild(topic);
            }
            ++i;
        }
    }

    public String getCategory(IHelpResource topic) {
        return null;
    }

    public String getId() {
        return this.getAttribute(ATTRIBUTE_ID);
    }

    public ICommandLink[] getRelatedCommands() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.help.ICommandLink");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (ICommandLink[])this.getChildren(clazz);
    }

    public IHelpResource[] getRelatedTopics() {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.help.IHelpResource");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IHelpResource[])this.getChildren(clazz);
    }

    public String getStyledText() {
        return null;
    }

    public String getText() {
        Node node = this.getElement().getFirstChild();
        while (node != null) {
            if (node.getNodeType() == 1 && ELEMENT_DESCRIPTION.equals(node.getNodeName())) {
                node.normalize();
                Node text = node.getFirstChild();
                if (text == null) {
                    return new String();
                }
                if (text.getNodeType() == 3) {
                    return text.getNodeValue();
                }
            }
            node = node.getNextSibling();
        }
        return null;
    }

    public String getTitle() {
        String title = this.getAttribute(ATTRIBUTE_TITLE);
        if (title == null || title.length() == 0) {
            return null;
        }
        return title;
    }

    public void setId(String id) {
        this.setAttribute(ATTRIBUTE_ID, id);
    }

    public void setText(String text) {
        Node node = this.getElement().getFirstChild();
        while (node != null) {
            if (node.getNodeType() == 1 && ELEMENT_DESCRIPTION.equals(node.getNodeName())) {
                this.getElement().removeChild(node);
                break;
            }
            node = node.getNextSibling();
        }
        if (text != null) {
            Document document = this.getElement().getOwnerDocument();
            Node description = this.getElement().appendChild(document.createElement(ELEMENT_DESCRIPTION));
            description.appendChild(document.createTextNode(text));
        }
    }
}

