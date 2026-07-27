# Week 2 - Understanding People: Talk Track

Companion to `week2-understanding-people.qmd`. Organized by video, then slide, with running timestamps that reset at the start of each video, spoken narration, questions for the room, and push questions for the discussions and activities.

**Lecture: 3 videos, one per chapter (Perception ~20 min · Motor Control ~20 min · Cognition ~40 min) · Discussions: ~70 min (4 x ~18, 1-2-4 format) · Activities: ~75 min**

---

## Intro

**Talk track:** "Last week we agreed HCI is human-centered, which is a nice slogan until you ask: which humans, and what do we actually know about them? This week is the payoff. We cannot open a user's head, but we can know general, reliable things: how eyes search, how hands point, how memory drops the ball, how people reason about a machine they cannot see into. Three videos, one per chapter: perception, motor control, cognition. By the end you will never look at a checkout screen the same way."

**Do:** Put the self-checkout image up and collect two or three frustrations from the room, unlabeled, on the board. Tell them you will come back at the end of each video and label their complaints with today's vocabulary. That callback is the through-line.

---

## Case Study - The self-checkout that nobody can use

**Talk track:** "Everyone remembers the self-checkout that made them wave for help. The failure people remember is 'it's just bad.' The interesting failure is that it breaks in four specific, predictable ways, spread across today's three chapters. It is not bad luck. It is ignorance of people."

**Ask:** "In the ten seconds you stand there stabbing at the screen, what are your eyes actually doing?" (Landing point: darting, no clear target, everything competing.)

**Flag:** This kiosk comes back as a callback in every video: saliency and clutter in Perception, the small far "pay" button in Motor Control, the retyped code and the opaque error in Cognition (Parts A and B). Promise three callbacks minimum; deliver four.

**Sources:** Chapter 2 (framing, seven areas of understanding people); Chapters 3 to 5 for the concepts.

<!-- ~4 min -->

---

# Video 1: Perception - 0:00-20:00

## Perception is not a camera - 0:00

**Talk track:** "Kill the camera metaphor now. Your retina is not film and your mind is not playing back a photo. Perception is a construction job with three suppliers: raw sensory information, expectation built from a lifetime of screens, and attention deciding what to even look at. Reading is doing the work perception should be doing."

**Ask:** "If two people look at the identical screen and see different things, who is right?" (Both; the percept is constructed, not delivered.)

**Connection forward:** This sets up saliency: attention is strategic, so we can design to win it.

## The three ingredients of a percept - 3:00

**Talk track:** "Tight definition: perception collects and organizes information through the senses, and in HCI it runs on three components: sensory information, expectation, attention. Memorize the trio. Every perception story this course tells is one of those three doing something."

**Do:** Keep this slide fast. It is the precise statement; the stories come next.

## Why a constructed percept changes your design - 5:00

**Talk track:** "Here is the 'so what.' The UI is the entire channel from machine to human, and it only speaks through perception. Novices ride raw features; experts ride memory and expectation, and your design serves both on the same screen. And because prior products trained your users, whoever came before you set expectations you now inherit."

🎤 **Your example here:** A before/after from your own work where users 'saw' something that was not there, or missed something that was, because of an expectation from a competitor product.

**Ask:** "Norman says stop asking whether a screen object 'affords clicking.' What is the better question?" (Does the user *perceive* clicking here as useful?)

## Visual saliency - 8:00

**Talk track:** "Saliency is a probability: how likely is this element to grab attention in the first few seconds? It is not a property of the element alone; it is the element against everything else on the screen."

## Spending your saliency budget - 10:00

**Talk track:** "Uniqueness is the currency. Unique in color, size, shape, orientation, or motion and it pops out peripherally, under 100 milliseconds. Need a combination of features and the user has to fixate item by item, and now you are slow. Treisman and Gelade named that split. The killer line: clutter is saliency's evil twin. Clutter is what happens when everything tries to be salient, so nothing is."

🎤 **Your example here:** The Rosenholtz Post-it test on a real dashboard: could you pick a color and size for a sticky note that would stand out? If not, it is cluttered.

**Ask:** "Your PM wants the new feature badge, the promo banner, AND the alert all bright red. What do you tell them?" (Saliency is a budget; spend it on one thing.)

## Grouping: the Gestalt principles - 13:00

**Talk track:** "Proximity, common area, similarity, continuation: four cheap ways to say 'these belong together' without a single word of instruction. Brumby and Zhuang found grouping speeds menu search, but only with a few big groups. Chop a menu into many tiny groups and you have thrown the benefit away."

## Some perception fails (fail images) - 15:00

**Do:** Let students diagnose the ungrouped-menu image with the vocabulary before you say anything.

**The diagnosis:** Twenty items, one flat column, no proximity or common-area cues, so the eye has no structure to grab; every item is equally weighted, which means equally invisible. The tell: you cannot describe the menu's regions because there are none.

**On the red-green image:** status encoded only in color, and for a red-green colorblind user the two states collapse to one. Encoding rule: color is never the only channel.

**On the "Not so fast" callout (worth 60 seconds):** "They are called Gestalt *laws*, but the chapter quietly demotes them to heuristics. Wertheimer treated grouping as fixed; Kieras and Hornof's active vision shows people reorganize the same display by goal. So use Gestalt to make your intended reading the easy one, then test it, because users are not obligated to see your groups."

## Concept check (Perception) - 18:00

**Do:** Read the twelve-KPI-tiles scenario, 60 to 90 seconds of silence, then take two answers. A fully integrated answer says: twelve unique colors means twelve things competing, so nothing is salient (clutter); fix by muting eleven tiles and making the one priority KPI unique in size or color.

<!-- ~20 min -->

---

# Video 2: Motor Control - 0:00-20:00

## The trade-off underneath every click - 0:00

**Talk track:** "Callback: the kiosk's pay button was small and shoved in a corner. This video tells you exactly how much that costs in milliseconds. Start with the trade-off that governs every aimed movement: you can be fast or you can be accurate, not both at once. Your hand is always negotiating that deal."

**Ask:** "Name a task where you deliberately chose slow-and-accurate over fast-and-sloppy." (Threading a small target, hitting 'delete' carefully.)

## Fitts' Law - 3:00

**Talk track:** "Movement time is a plus b times the index of difficulty, and difficulty is the log of distance over width, plus one. That is the whole thing. D is how far, W is how wide, ID is in bits, a and b you fit from data. And it is not a law of nature; Fitts found it by experiment. It just happens to be one of the most reliable regularities we have."

**Do:** Write the equation on the board and label D, W, ID out loud. Do not let it stay abstract.

## What Fitts buys you on the design floor - 6:00

**Talk track:** "Everything reduces to 'big and close is fast, small and far is slow,' but now it is measurable. The best trick in the book: screen edges are infinitely deep targets. You cannot overshoot the top of the screen, so the effective width is enormous. That is why the Mac menu bar and screen corners are gold. Whoever owns the edge owns the fastest real estate on the display."

🎤 **Your example here:** A war story where enlarging or repositioning a single high-traffic button moved a real metric.

**Ask:** "Given Fitts, where should a frequently used toolbar button go on a maximized window?" (Against an edge or corner; near the cursor's likely origin.)

**Connection forward:** Throughput, next, is how we turn this into a fair device comparison.

## Worked example: reading the model - 10:00

**Talk track:** "Fitts' own stylus data: MT equals 12.8 plus 94.7 times ID, R-squared 0.967. That is a near-perfect line. One bit predicts about 107 milliseconds; seven bits about 676. Read ID intuitively as how many target-widths fit in the distance, or how many targets you could have hit on the way to the one you wanted."

**Do:** Walk one row of Fitts' table live so they see ID and predicted MT line up.

## Some target-acquisition fails - 13:00

**Do:** Put up the 8-pixel close button and let them compute, roughly, why the mis-tap happened.

**The diagnosis:** Tiny W and a cramped corner drive ID up; the finger's own effective width exceeds the target, so the 96 percent-hittable region includes the ad next door. The tell: the miss is systematic, not clumsy.

**On the "Not so fast" callout (worth 60 seconds):** "The equation is settled and battle-tested, but throughput is not: MacKenzie defines it one way, Zhai another, and they discard different information. The model is also brittle across target-size ranges and needs extensions for 2D and touch, and Meyer's submovement model explains what the averaged MT hides. So reason with Fitts, compare within a study with Fitts, but never quote one lab's a and b as a universal constant."

## Concept check (Fitts) - 18:00

**Do:** Read the delete-vs-save scenario, 60 seconds silent. Strong answers keep save's W large and D small while raising delete's cost: shrink it, move it far, or add a confirmation step that increases effective distance. Make them say whether they changed D, W, or both.

<!-- ~20 min -->

---

# Video 3: Cognition - 0:00-40:00 (Part A: Memory, 0:00-20:00)

## Why memory is a design problem - 0:00

**Talk track:** "Callback: imagine the kiosk flashes a six-digit code, then hides it two screens later and asks you to retype it. That is not a rare bug; it is the single most common way interfaces abuse cognition. And the first thing to unlearn: memory is not a hard disk. It reconstructs, and it reconstructs toward whatever is useful right now."

**Ask:** "When did an interface last make you hold something in your head across screens?" (Verification codes, wizard steps, copy-paste across apps.)

## Working memory - 3:00

**Talk track:** "Working memory is the small, fast scratchpad: temporary maintenance and manipulation of what you need for the action in hand. Two limits define it, capacity and time, and the contents fade unless you actively rehearse them."

## Designing around a tiny scratchpad - 5:00

**Talk track:** "The number keeps shrinking. Miller said seven plus or minus two; Cowan and others now say three to five in young adults, so design for the low end. Rehearsal is the felt cost, which is why a clunky flow leaves users tired. And interruptions are pure poison: every switch costs a few hundred milliseconds and can wipe what WM was holding. The one takeaway: do not rely on working memory. Ever."

🎤 **Your example here:** A flow you fixed by putting a value on the same screen as the field that needs it, and the drop in errors that followed.

**Ask:** "What is the laziest possible fix for a code-on-one-screen, field-on-another design?" (Put them on the same screen, or autofill.)

## Recall vs recognition - 9:00

**Talk track:** "Recall means summoning a trace from nothing, or from a thin cue. Recognition means the whole item is in front of you and you just confirm you have seen it. Recognition is the easy cousin, and design should almost always route users to it."

## Why recognition wins - 11:00

**Talk track:** "People recognize hundreds of faces and icons without effort but cannot recall the same items cold. That single asymmetry is why the graphical interface beat the command line: menus let you recognize, command languages force free recall. Norman's phrase is knowledge-in-the-world versus knowledge-in-the-head: show the option instead of demanding the memorized command. But do not over-externalize, or the head stops holding anything, which is the sticky-note-password trap."

**Ask:** "Give me a modern interface that still forces recall when it could offer recognition." (CLI flags, promo-code fields, 'type the name of the repo to confirm.')

**On encoding-retrieval symmetry:** "People retrieve better when retrieval looks like encoding; change the login screen's whole look and the password itself gets harder to summon. Consistency is a memory aid, not just an aesthetic."

## Some memory fails - 15:00

**Do:** Put up the passcode-then-hidden-field flow; let them name the crime.

**The diagnosis:** The design forces a value from working memory across a screen transition, with no way back to re-perceive it, converting a trivial recognition task into a fragile recall task under time pressure. The tell: users copy the code onto their hand or a scrap of paper, externalizing because you refused to.

**On the "Not so fast" callout (worth 60 seconds):** "Miller's seven plus or minus two got repeated for decades as a design law. Cowan puts the real ceiling nearer three to five, and argues WM is not slots at all but fading activation in an associative network. The number depends on chunking and content, so distrust any magic number. In practice: chunk hard, keep the working set tiny, never bank on users holding values."

## Concept check (Memory) - 18:00

**Do:** Read the verification-code scenario, 60 seconds silent. Strong answers name working memory as the overloaded system and give the one-line fix: show the code on the same screen as the field, or autofill it, turning recall into recognition.

<!-- ~20 min -->

---

# Video 3, Part B: Reasoning and Decisions - 20:00-40:00

## Users cannot see inside the machine - 20:00

**Talk track:** "Final callback: the kiosk never told you whether your tap registered or what the error meant, so you guessed. That is the human condition with computers: the box is opaque, and cognition's job is to reason about something it cannot see into. Two coping tools: a mental model to simulate the system, and fast heuristics for when reasoning is too expensive."

**Ask:** "When a system gives you no feedback, what do you do?" (Invent a theory and act on it, usually wrong.)

**Plant, don't resolve:** AI agents are the most opaque systems users have ever touched. Hold that thought; it drives the discussions.

## Mental models - 23:00

**Talk track:** "A mental model is a memory-based representation of a system and how your inputs change its state, so you can simulate outcomes you cannot directly see. It is the little physics engine you run in your head before you click."

## When the user's model clashes with the system - 25:00

**Talk track:** "The uncomfortable truth: real users' models are fragmentary. Not a clean diagram, but a few remembered episodes and some loose facts. Mayer and Gallini showed the flip side: give people a clear parts-and-steps explanation of a device and they recall more and solve problems better, because a good external model helps them simulate it. And people would rather poke the interface than reason carefully. So most 'user error' is really a model clash: the designer's model and the user's model disagree, which is exactly the kiosk. Now add AI: when an agent acts for you, your model of what it will do is thin and often wrong. The Bayesian-brain view says users are constantly predicting the next behavior, so a good system makes its behavior predictable and legible."

🎤 **Your example here:** A time your users built a wrong but reasonable model of a feature, and what the confusion cost.

**Ask:** "Where is a mental-model clash costing you right now in a product you know?" (Undo behavior, sync, autosave, 'what did the AI just change?')

## System 1, System 2, and heuristics - 29:00

**Talk track:** "Kahneman's two systems: System 1 is fast, intuitive, effortless; System 2 is slow, deliberate, and only steps in when intuition is not enough. A heuristic is a System 1 shortcut that gets you a fast answer and, as a package deal, a predictable bias."

## The levers behind every choice - 31:00

**Talk track:** "Anchoring: users center on the tool they already know. Availability: whatever springs to mind gets chosen, which is why PowerPoint wins by being top-of-mind, not best. Status quo: people keep the default, so whoever sets the default holds real power. And prospect theory: we judge against a reference point and feel losses harder than equal gains, so framing a change as a loss flips behavior. The dark truth: these are the exact levers behind dark patterns."

**On the ethics beat:** "You cannot turn these biases off. You can only choose to exploit them or respect them. That choice is the whole ethics of our field, and it is Discussion 1."

**Ask:** "Name a product that uses loss framing on you." (Streak-loss nags, 'your cart will expire,' 'you'll lose your data.')

## Some decision-design fails - 35:00

**Do:** Put up the cancel-subscription dark pattern; let them enumerate the levers.

**The diagnosis:** Pre-selected 'stay' exploits status-quo and default power; the tiny grey 'cancel anyway' fights saliency; the 'you'll lose all your data' line weaponizes loss aversion. Three biases stacked to defeat one user intent. The tell: the easy path serves the company, not the user.

**On the "Not so fast" callout (worth 60 seconds):** "Kahneman sold System 1 / System 2 and a pile of priming effects as robust. Then the replication crisis hit, several social-priming classics failed to replicate, and Kahneman himself walked back the priming chapter. Prospect theory and loss aversion, though, held up across bargaining, consumer choice, and voting. So lean on the well-replicated levers, defaults, loss framing, recognition, and treat a cute one-off priming trick as unproven."

## Concept check (Mental models) - 38:00

**Do:** Read the AI-silently-reformats scenario, 60 seconds silent. Strong answers: the anger is a model violation, the system did something the user's model did not predict and could not see, so 'correct' is irrelevant. Fix: surface the change (diff, highlight, undo affordance) so the user's model and the system's behavior line back up.

<!-- ~40 min - Cognition ends, lecture ends -->

---

# Discussions - ~70 min total, 1-2-4 format

Per question: 2 min individual writing, then 5 min pairs, then 8 min quads, then ~3 to 5 min share-out, about 18 min each.

## Q1: When is it fair to design for people's biases rather than against them?

**Why it's worth 18 minutes:** It forces students to admit the tools they just learned (defaults, loss framing, recognition) are ethically neutral only in a vacuum. There is no line without a value judgment, and they have to draw one out loud.

**Push questions for shallow groups:**
- "You said 'don't manipulate.' A default opt-in to a genuinely helpful safety feature saves lives. Is that manipulation, and does it matter?"
- "Your PM says the loss-framed nag lifts retention 12 percent and retention pays your salary. What do you actually say in that meeting?"
- "Draw the line as a rule a junior designer could apply on Monday. Now name a real feature your rule wrongly bans."

**Good vs. weak:** Strong answers give a test (transparency? reversibility? does it serve the user's own stated goal?) and apply it to a concrete case. Weak answers stop at "dark patterns are bad"; push them to defend a default they think is legitimate.

## Q2: Is a general understanding of people possible, or a comforting fiction?

**Why it's worth 18 minutes:** It attacks the premise of the whole week. If theory does not generalize, Fitts and Cowan are trivia. Students have to locate the actual boundary between general theory and situated particulars.

**Push questions for shallow groups:**
- "Fitts' Law generalizes; 'users love minimalism' does not. What distinguishes a claim that travels from one that does not?"
- "Landauer says just test with users and skip theory. If he is right, why did Project Ernestine's model beat the company's intuition?"
- "Name one thing from this deck you would bet money generalizes to a culture you have never studied, and one you would not."

**Good vs. weak:** Strong answers separate levels: low-level perceptual and motor facts generalize widely, higher-level preference claims do not, and theory plus user research is the point. Weak answers pick a side absolutely; push them to name where their side fails.

## Q3: Who is "the user" when an AI agent acts on your behalf?

**Why it's worth 18 minutes:** Every model in the deck assumes a human at a display. Agents break that assumption, and students have to decide whether the frameworks survive or need replacing. This is the AI discussion.

**Push questions for shallow groups:**
- "If nobody points, does Fitts' Law still describe anything real in an agentic flow? What replaces it?"
- "The agent has a 'mental model' of you and you have one of it. When they clash and money moves, who is accountable?"
- "Your agent books the wrong flight confidently. Was that a perception failure, a memory failure, a decision failure, or a design failure? Defend one."

**Good vs. weak:** Strong answers reassign the frameworks: the human's role shifts from operator to supervisor, so legibility and mental-model repair matter more than pointing speed. Weak answers just say "it's complicated"; force a concrete reallocation of responsibility.

## Q4: Recognition beats recall for humans. Does that hold when the interface writes itself?

**Why it's worth 18 minutes:** It pits two course principles against each other, consistency and adaptivity, on the new ground of generative UIs. Students cannot have both maximally.

**Push questions for shallow groups:**
- "If every visit renders a fresh layout, when does the user ever become an expert? Is everyone a permanent novice?"
- "Name a case where a changing UI genuinely beats a consistent one. Now name the user it hurts."
- "Your metric is task success on first visit; consistency helps returning users. Which do you optimize, and who loses?"

**Good vs. weak:** Strong answers tie it back to expectation and long-term memory: recognition needs stable structure to build on, so adaptivity should vary content while holding structure constant. Weak answers say "it depends"; make them name the specific condition it depends on.

---

# Activities - ~75 min total

## Activity 1: Saliency and Fitts audit of a live interface (~35 min)

**Purpose:** Turn two abstract models into an evaluative lens students can point at any screen. They should discover that saliency and Fitts sometimes disagree, and that disagreement is where design judgment lives.

**Push questions for shallow or fast groups:**
- "You marked the pay button 'important.' Estimate its D and W and compute a rough ID. Is it the fastest target on screen? Should it be?"
- "Which element wins the eye in the first second? Is that the element you would *want* to win? If not, what visual primitive would you change?"
- "Find one place where making an element more salient would make it a worse Fitts target, or vice versa. Which wins?"

**Strong output:** A row like "Primary 'Pay' button: intended most-important; actually third to draw the eye behind two banners; ID roughly 4 bits because it is small and cornered; fix: enlarge and dock to bottom edge." **Weak output:** "Button is too small" with no D, W, or saliency call; redirect them to quantify and to say what the eye does first.

**Connects to:** Perception (saliency, clutter, Gestalt) and Motor Control (Fitts, speed-accuracy, edges).

## Activity 2: Reverse-engineer an AI assistant's mental model (~40 min)

**Purpose:** Make legibility concrete. Students should discover that most of their friction with AI features is a mental-model mismatch, and that heuristics like status quo and availability are quietly steering them. This is the AI activity.

**Push questions for shallow or fast groups:**
- "Write the user's one-sentence prediction of what the feature does. Now write what it actually does. Where exactly do they diverge?"
- "Point to one place the product exploits a bias you learned today, availability, status quo, or loss framing. Is that exploitation defensible here?"
- "If this feature ran autonomously with no confirmation, which single mismatch would do the most damage? Design the legibility cue that prevents it."

**Strong output:** A row like "Users predict autocomplete only finishes the current word; it actually rewrites the whole sentence; fix: show the proposed change as a highlighted diff before accept." **Weak output:** "It's confusing"; redirect to a specific predicted-vs-actual pair and a concrete legibility fix.

**Connects to:** Cognition Part B (mental models, System 1/2, heuristics, prospect theory) and Cognition Part A (recognition over recall for surfacing what the AI did).
