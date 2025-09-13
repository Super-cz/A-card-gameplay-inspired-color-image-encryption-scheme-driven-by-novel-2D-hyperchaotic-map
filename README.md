# A-card-gameplay-inspired-color-image-encryption-scheme-driven-by-novel-2D-hyperchaotic-map

This repository implements and reproduces experiments for a card-gameplay-inspired permutation (cut/riffle/deal analogies) combined with a hyperchaos-driven diffusion pipeline for color image encryption. It includes end-to-end scripts and evaluators to support batch experiments and reproducibility.

Highlights

🃏 Card-gameplay permutation: Global shuffling via cut/riffle/deal-style mechanisms for strong spatial de-correlation.

🔀 Hyperchaos-driven diffusion: Sensitive diffusion powered by a novel 2D hyperchaotic map, with transient removal and an automatic “entry into typical behavior” detection.

📊 Security & statistics: One-click NPCR/UACI, entropy, pixel-correlation, key/plaintext sensitivity, and occlusion-attack robustness; NIST SP 800-22 randomness testing support.

🧪 Reproducibility: Experiment configs, convergence plots, and logs for reliable re-runs.

⚙️ Modular design: Decoupled map generation, permutation, diffusion, and evaluation—easy to swap components and run ablations.

Status (WIP)

The codebase is being organized. Coming soon: example data, transient/convergence demos, batch evaluation pipeline, and report templates.

Expected Structure
/core        # Hyperchaotic map & encryption pipeline
/eval        # NPCR/UACI/entropy/correlation/NIST evaluators
/experiments # Reproduction scripts & configs
/assets      # Sample images & visualizations


Forthcoming: requirements.txt, minimal demo_encrypt.py, and convergence/thresholding examples.

Citation

If this repository helps your research, please cite:
A card-gameplay-inspired color image encryption scheme driven by novel 2D hyperchaotic map
(BibTeX will be added after the final publication details are available.)

License & Contact

License TBD (to be announced with the first release).
Issues and PRs are welcome—especially around improving permutation/diffusion strategies and evaluation metrics.
