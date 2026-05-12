<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.tap.model.QuestionResult" %>

<%! 
    public String safeText(String s) {
        if (s == null) return "";
        return s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace("\"", "&quot;");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Assessment Summary | Edutree-Stars</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts: Poppins -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        /* =========================================================================
           ULTRA PREMIUM ENTERPRISE THEME (Matched with Login)
           ========================================================================= */
        :root {
            --bg-color: #f4f7f9; 
            --glass-bg: rgba(255, 255, 255, 0.85);
            --glass-border: rgba(255, 255, 255, 0.6);
            --text-color: #1e293b;
            --text-muted: #64748b;
            --cyan-primary: #00f2fe;
            --cyan-secondary: #4facfe;
            --cyan-glow: rgba(0, 242, 254, 0.15);
            --input-bg: #ffffff;
        }

        body { 
            font-family: 'Poppins', sans-serif; 
            background-color: var(--bg-color);
            background-image: radial-gradient(circle at 0% 0%, var(--cyan-glow), transparent 40%), 
                              radial-gradient(circle at 100% 100%, var(--cyan-glow), transparent 40%);
            background-attachment: fixed;
            color: var(--text-color);
            padding: 60px 20px; 
            min-height: 100vh;
        }

        .result-container {
            max-width: 850px; 
            margin: auto; 
            background: var(--glass-bg);
            backdrop-filter: blur(20px); 
            -webkit-backdrop-filter: blur(20px);
            border: 1px solid var(--glass-border);
            border-radius: 24px; 
            padding: 50px; 
            box-shadow: 0 20px 50px rgba(0,0,0,0.08);
        }

        .score-circle {
            width: 200px; height: 200px; border-radius: 50%;
            border: 10px solid var(--cyan-primary); margin: 30px auto;
            display: flex; flex-direction: column; align-items: center; justify-content: center;
            box-shadow: 0 10px 30px var(--cyan-glow); 
            background: var(--input-bg);
        }
        
        .score-val { 
            font-size: 4rem; 
            font-weight: 800; 
            line-height: 1; 
            color: var(--text-color); 
        }

        .stat-box { 
            background: var(--input-bg); 
            padding: 25px; 
            border-radius: 20px; 
            border: 1px solid var(--glass-border); 
            box-shadow: 0 4px 15px rgba(0,0,0,0.03);
        }
        
        .review-item {
            background: var(--input-bg); 
            border-radius: 18px; 
            padding: 25px;
            margin-bottom: 20px; 
            text-align: left;
            border: 1px solid var(--glass-border);
            box-shadow: 0 4px 10px rgba(0,0,0,0.02);
        }

        /* Replaced default correct/wrong colors with brand-aligned palette (No Red) */
        .is-correct { 
            border-left: 6px solid var(--cyan-secondary); 
            background: linear-gradient(to right, var(--cyan-glow), #ffffff 15%); 
        }
        .is-wrong { 
            border-left: 6px solid var(--text-muted); 
            background: linear-gradient(to right, rgba(100, 116, 139, 0.05), #ffffff 15%); 
        }

        .text-correct { color: var(--cyan-secondary); font-weight: 700; }
        .text-wrong { color: var(--text-muted); font-weight: 600; }
        .text-brand { color: var(--cyan-secondary); }

        .btn-dash {
            background: linear-gradient(135deg, var(--cyan-primary), var(--cyan-secondary));
            color: #ffffff; border: none; padding: 16px 50px; border-radius: 12px;
            font-weight: 700; text-decoration: none; display: inline-block; transition: 0.3s;
            box-shadow: 0 8px 20px var(--cyan-glow);
        }
        
        .btn-dash:hover { 
            transform: translateY(-3px); 
            box-shadow: 0 12px 25px rgba(0,242,254,0.4); 
            color: #ffffff; 
        }

        /* Divider overrides */
        .divider-line {
            border-top: 1px solid var(--glass-border);
            margin: 40px 0;
        }
        
        .review-divider {
            border-left: 1px solid var(--glass-border);
        }
    </style>
</head>
<body>

    <div class="result-container text-center">
        <div style="font-size: 1.5rem; font-weight: 800; color: var(--text-color); margin-bottom: 20px;">
            <i class="fas fa-layer-group text-brand me-2"></i> Edutree-Stars
        </div>
        
        <h1 class="fw-extrabold mb-2" style="color: var(--text-color);">Assessment Complete</h1>
        <p style="color: var(--text-muted);">Domain: <span class="text-brand fw-bold"><%= request.getAttribute("tech") %></span></p>

        <div class="score-circle">
            <div class="score-val"><%= request.getAttribute("score") %></div>
            <div class="small fw-bold mt-1" style="color: var(--text-muted); letter-spacing: 2px;">SCORE</div>
        </div>

        <div class="row g-4 mt-3">
            <div class="col-md-6">
                <div class="stat-box">
                    <p class="small mb-1 fw-bold text-uppercase" style="color: var(--text-muted);">Accuracy</p>
                    <h2 class="fw-bold m-0" style="color: var(--cyan-secondary);"><%= request.getAttribute("accuracy") %>%</h2>
                </div>
            </div>
            <div class="col-md-6">
                <div class="stat-box">
                    <p class="small mb-1 fw-bold text-uppercase" style="color: var(--text-muted);">Total Time</p>
                    <h2 class="fw-bold m-0" style="color: var(--cyan-secondary);"><%= request.getAttribute("timeTaken") %>s</h2>
                </div>
            </div>
        </div>

        <div class="divider-line"></div>

        <h3 class="text-start mb-4 fw-bold" style="color: var(--text-color);">
            <i class="fas fa-chart-pie me-2" style="color: var(--cyan-secondary);"></i> Performance Review
        </h3>

        <% 
            List<QuestionResult> results = (List<QuestionResult>) request.getAttribute("reviewList");
            if(results != null) {
                for(QuestionResult res : results) {
        %>
            <div class="review-item <%= res.isCorrect() ? "is-correct" : "is-wrong" %>">
                <p class="fw-bold mb-3" style="font-size: 1.05rem; color: var(--text-color);">
                    <%= res.getQuestionText() %>
                </p>
                
                <div class="row">
                    <div class="col-6">
                        <span class="small d-block mb-1" style="color: var(--text-muted);">Your Selection</span>
                        <span class="<%= res.isCorrect() ? "text-correct" : "text-wrong" %>">
                            <i class="fas <%= res.isCorrect() ? "fa-check-circle" : "fa-minus-circle" %> me-1"></i>
                            <%= safeText(res.getUserAnswer()) %>
                        </span>
                    </div>
                    <div class="col-6 review-divider">
                        <span class="small d-block mb-1" style="color: var(--text-muted);">Correct Answer</span>
                        <span class="text-correct">
                            <i class="fas fa-check me-1 opacity-50"></i>
                            <%= safeText(res.getCorrectAnswer()) %>
                        </span>
                    </div>
                </div>
            </div>
        <%      }
            } 
        %>

        <div class="mt-5">
            <a href="studentDashboard.jsp" class="btn-dash">
                Return to Dashboard <i class="fas fa-arrow-right ms-2"></i>
            </a>
        </div>
    </div>

</body>
</html>
