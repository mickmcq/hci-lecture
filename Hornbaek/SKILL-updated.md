---
name: lecture-slides
description: >
  Generate Quarto lecture and activity slides for a Human-Computer Interaction course,
  plus a separate slide-by-slide talk track file. Use this skill whenever the user asks
  to generate slides, lecture slides, a talk track, or class materials from HCI chapters,
  readings, or textbook content. Also triggers when the user says things like "make
  slides for Chapter X", "build the Week N deck", "update this lecture", "generate
  slides from these chapters", or provides chapter text and wants it turned into a
  lecture. Always use this skill if the user is working on course materials for an HCI,
  human factors, or UX course.
---

# Lecture Slides Skill

Generates course materials for a **master's-level Intro to HCI course**. The instructor
provides chapter text (or an older deck to update); you produce **two files**:

1. `weekN-topic.qmd`: the Quarto/Reveal.js slide deck for the whole week. All of the
   week's concept videos live in this one deck. **No speaker notes in this file.**
2. `weekN-topic-talk-track.md`: a standalone talk track, organized video-by-video and
   then slide-by-slide.

Read `references/templates.md` before writing either file. It contains skeleton
examples of both, matching the course's established design.

---

## Core Rules (always follow these)

1. **Two deliverables, cleanly separated.** The `.qmd` contains only what renders on
   slides, with no `{.notes}` blocks anywhere. Everything the instructor *says* lives in
   the talk track `.md`. The talk track's headings mirror the deck's slide titles so
   the two stay easy to keep in sync.

2. **No em dashes anywhere.** In both files, never use an em dash (or a spaced hyphen
   standing in for one). Use a colon, a semicolon, a comma, or a full sentence instead.
   For the bold-term bullet format, use a colon: `**Key term:** definition`.

3. **Definition and real-world meaning go on separate slides, with natural titles.** For
   each concept, give it a dedicated **definition slide** (the precise, formal statement
   of what the term is) and then a **separate slide** showing what the concept actually
   means in the real world (how it shows up in real products, what it changes for a
   designer, the consequence). Do not fold the plain definition and the lived meaning
   into one slide. **Title both slides naturally, never with a literal label.** Use the
   concept's name or a descriptive phrase (e.g. `## Visual saliency` then
   `## Spending your saliency budget`), not `## Definition: X` or `## What X means in
   the real world`. Keep the formal statement in an **untitled** `::: {.callout-note}`,
   not one titled "Definition." You have the time for this separation; use it.

4. **Salient, not exhaustive.** Surface the 4 to 6 most teachable ideas across the week.
   Skip concepts that are minor, obvious, or covered better elsewhere. When in doubt, cut
   a whole concept rather than compressing everything.

5. **Casual but research-grounded tone.** Write like an experienced practitioner talking
   to smart graduate students. Contractions fine, opinions welcome. Bold key terms in
   bullets. **Cite researchers by author name only, never with a date or year.** Write
   **Fitts**, **Bi, Li & Zhai**, **Deci, Koestner & Ryan**, the way a colleague would
   name-drop, not the way a bibliography would.

6. **Flag contested research.** When a finding the chapter presents as settled is
   actually disputed, conditional, or commonly misapplied, add a
   `{.callout-warning title="Not so fast..."}` block naming the specific studies on both
   sides (author names only, no years) and ending with the design takeaway. (Reputable
   sources: NN/g, ACM CHI/CSCW, Don Norman, ISO 9241, WCAG, meta-analyses.) At least one
   per deck; one per concept is better when the material supports it.

7. **AI rule.** At least one discussion question AND at least one activity must directly
   engage with AI: how the lecture concepts apply, break down, or take on new meaning
   when AI agents or AI-generated interfaces are involved.

8. **Continuity.** Open the intro by linking back to the previous week's topics. Plant
   forward references to next week where the material hands off naturally. The opening
   case study should get explicit callbacks later in the deck (aim for 2 to 3).

9. **Images.** Use `<!-- IMAGE: description -->` placeholders rather than inventing
   filenames. Exception: use actual filenames if the instructor provided them.

---

## Deck structure: one deck per week, one video per chapter

The week is delivered as several **videos, each about 20 minutes**, instead of a single
30-minute lecture over the whole week. **Prefer one video per source chapter**, titled
after the chapter (e.g. Perception, Motor Control, Cognition). Each video's title slide
names the chapter and its key topics. Inside a chapter video, cover its 2 to 4 salient
concepts, each expanded into a definition slide and a separate real-world-meaning slide
(Rule 3), plus fail examples and a concept check.

All of the week's videos live in the **same** `weekN-topic.qmd` deck; you mark where each
video begins and ends with a divider comment:

```
<!-- ==== VIDEO 1: [Chapter Name] (~20 min) ==== -->
...
<!-- ==== END VIDEO 1 ==== -->
```

Pacing markers are **per video and cumulative within that video**, resetting to zero at
the start of each video: `<!-- Video 1 · ~6 min -->`, `<!-- Video 1 · ~20 min -->`,
then `<!-- Video 2 · ~5 min -->`, and so on.

Budget **~20 minutes per chapter video**: roughly 8 to 10 slides at about 2 minutes each.
**When a chapter carries two large concepts, run it as one double-length video (~40 min)
split with a `#` "Part B" divider slide**, keeping cumulative pacing continuous
(`~0 min` to `~40 min`) rather than splitting the chapter across two separate videos. A
short framing chapter can instead fuel the intro and case study rather than getting its
own video.

Number of videos typically equals the number of main chapters for the week (usually 3
to 4).

```
[Title slide: Week N + Part X of @Author + *Chapter · Chapter · Chapter* line]

<!-- ==== VIDEO 1: [Chapter A] (~20 min) ==== -->
[# Intro: link to last week, pose this week's question]   (opens video 1)
[# Case Study: image slide]
[# Why did X fail?: analysis bullets + "In the wild" callout]
[# Video 1: [Chapter A] title slide · names chapter + its topics]
[## [Concept 1 name] · precise, formal statement only, untitled callout-note]
[## [Descriptive real-world title] · application, consequence]
[## Fail-example image slides where available]
[## Concept check closing the concept]
<!-- ==== END VIDEO 1 ==== -->

<!-- ==== VIDEO 2: [Chapter B] (~20 min) ==== -->
[# Video 2: [Chapter B] title slide]
[## [Concept name]]
[## [Descriptive real-world title]]
[## Fail examples]
[## Concept check]
<!-- ==== END VIDEO 2 ==== -->

<!-- ==== VIDEO 3: [Chapter C] (~40 min, double-length) ==== -->
[# Video 3: [Chapter C] title slide]
[## ... Part A concepts, each def + real-world + concept check ...]
[# Chapter C, Part B: [subtitle] · divider slide at ~20 min]
[## ... Part B concepts, each def + real-world + concept check ...]
<!-- ==== END VIDEO 3 ==== -->

[# Discussions]
[# Activities]
[{{< include endMatter.md >}}]
```

The intro and case study open Video 1 and lead into the first chapter. Every later video
starts on its chapter title slide, then the first concept.

### The three callout designs

- `::: {.callout-tip title="In the wild"}`: starts with 🎤, italic text. Marks where
  the instructor tells an industry story. Always *suggest a concrete example* in the
  callout (a known product incident, or "a story from your own experience" with a
  specific shape), so the slide works even if the instructor improvises nothing.
- `::: {.callout-warning title="Not so fast..."}`: contested-research blocks (Rule 6).
  A custom title posing the dispute as a question is also fine
  (e.g., "Is the overjustification effect even real?").
- `::: {.callout-note title="Pause and think"}`: on a dedicated
  `## [Concept check]{.r-fit-text}` slide ending each concept, a 1 to 3 sentence
  applied scenario students can answer from what they just learned.

Note: the **definition** slide uses a plain **untitled** `::: {.callout-note}` for the
formal statement (Rule 3), distinct from the titled "Pause and think" note above.

### Slide density

Content slides carry 4 to 6 substantive bullets in `**bold key term:** definition or
consequence` form. This deck style is denser than typical slideware; the punchy one-liner
insights go in the *talk track*, not on extra slides. Keep the definition slide strictly
to the formal definition, and put the applied, real-world reading on its own slide.

---

## Discussions (~70 min total)

1-2-4 format: 2 min individual writing, then 5 min pairs, then 8 min quads, then about
3 to 5 min share-out, roughly 18 min per question. **Four questions per deck.**

Each discussion slide (on the slide face, nothing else):
- `##` header is the question itself, phrased concise and arguable
- One plain sentence naming the tension
- One *italic* paragraph elaborating why it's worth the time

Ground questions in real debates in the field: universal design vs. edge-case framing,
dark patterns/captology ethics, mental models of opaque AI systems, who is "the user"
when an agent acts on your behalf, autonomy vs. efficiency.

Push questions, why-this-is-worth-18-minutes framing, and good-vs-weak answer criteria
all go in the **talk track**, not the deck.

---

## Activities (~75 min total)

Two activities (about 35 and about 40 min), each on one slide, `##` title including
`(~X min)`. Slide face uses bold-label lines:

- `**Task:**` what students do, 1 to 2 sentences, groups of 3 to 4
- `**Produce:**` the concrete artifact (table with minimum rows, annotated screenshot
  with minimum findings), always including a component that forces a position
  (e.g., "one rule you think is wrong, with your argument")
- `**Time:**` split as `X min group work · Y min share-out`
- `**Debrief:**` one question for whole-class share-out

Good activity types: design-system reverse-engineering (Material, HIG), AI interface
audits, heuristic walkthroughs, mental-model mapping, comparative UI analysis.

Purpose, push questions, and strong-vs-weak output criteria go in the **talk track**.

---

## Talk track file format

Mirror the deck: same video dividers, then same section and slide headings, in order.
A global header states the time budgets. Group the talk track by video, and inside each
video use running timestamps that reset at that video's start (0:00 to ~20:00, or 0:00
to ~40:00 for a double-length chapter video). Per lecture slide, use whichever of these
labels apply:

- Video headers with their own clock (`# Video 1: Perception · 0:00–20:00`)
- Slide timestamps inside the video (`## Spending your saliency budget · 10:00`)
- `**Talk track:**` 2 to 4 sentences of actual spoken narration, in quotes, first person.
  This is where the punchy insight lines live.
- `**Ask:**` one question for the room, with the expected answers in parentheses
- `**Do:**` mechanics (collect examples on the board, pause 60 to 90 s, reveal order)
- `🎤 **Your example here:**` what shape of personal story fits this slot
- `**On the "Not so fast" callout:**` how to deliver the dispute in about 60 seconds
- Diagnosis scripts for every fail-image slide (let students diagnose first)
- `**Flag:** / **Plant, don't resolve:** / **Connection forward:**` continuity moves

Because definition and real-world meaning are separate slides, give each its own talk
track entry: on the definition slide, keep narration tight and precise; on the real-world
slide, this is where the story, the example, and the "so what" live.

Per discussion: **Why it's worth 18 minutes**, 3 push questions (each names a specific
tension, forces a position, or introduces a complication), and **Good vs. weak** answer
criteria. Per activity: **Purpose**, 3 push questions for shallow/fast groups,
**Strong output / Weak output** with concrete examples, and **Connects to** lecture
concepts.

Push-question style: "You said it depends: depends on what? Name one condition where
X is clearly true." / "Your PM asks you to do X and conversion pays your salary; what
do you actually say in that meeting?"

---

## Quality check before outputting

- [ ] Two files produced; `.qmd` has zero `{.notes}` blocks
- [ ] No em dashes anywhere in either file
- [ ] All citations use author name only, with no dates or years
- [ ] One deck for the week; one video per chapter, titled after the chapter, with `VIDEO N` dividers
- [ ] Each video's title slide names the chapter and its key topics
- [ ] A two-concept chapter runs as one double-length (~40 min) video split with a `#` "Part B" divider, not two videos
- [ ] Per-video cumulative pacing markers reset at each video start (`<!-- Video N · ~X min -->`)
- [ ] Each concept has a separate definition slide and a separate real-world-meaning slide
- [ ] Slide titles are natural (concept name / descriptive phrase), never "Definition: X" or "What X means in the real world"
- [ ] Formal definitions sit in an untitled `{.callout-note}`, not one titled "Definition"
- [ ] Title slide has the *Chapter · Chapter · Chapter* line
- [ ] Case study: image slide + "Why did X fail?" analysis, with 2 to 3 callbacks later
- [ ] Every concept ends with a `[Concept check]{.r-fit-text}` slide
- [ ] "In the wild" 🎤 callouts each suggest a concrete example
- [ ] At least one "Not so fast..." block with citations on both sides + design takeaway
- [ ] 4 discussion questions in header + framing + italic format; at least one on AI
- [ ] 2 activities totaling ~75 min in **Task/Produce/Time/Debrief** format; at least one on AI
- [ ] Talk track mirrors deck videos and headings; push questions + good-vs-weak for every discussion and activity
- [ ] Intro links back to last week; forward hand-offs to next week planted
- [ ] Images use placeholders unless instructor gave filenames
- [ ] Deck ends with `{{< include endMatter.md >}}`
